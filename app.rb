require 'sinatra'
require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"
require_relative "enemy.rb"
require_relative "game.rb"
use Rack::Session::Pool


get '/' do
  erb :bs1
end


post '/page1' do

redirect '/page2'
end

get '/page2' do
  
  erb :bs2
end

post '/page2' do
  session.clear
  
  session[:board] = Grid.new(params[:gridsize].to_i, "player")
  session[:enemyboard] = Grid.new(params[:gridsize].to_i, "ai")
  session[:enemy] = Enemy.new(session[:enemyboard], session[:board])
  session[:err] = ""
  session[:fire_err] = ""
  redirect '/page3'
end

get '/page3' do
  start = session[:start] 
  hitter = session[:hitter] || ""
  fire = session[:startfire] || ""
  board = session[:board] 
  enemyboard = session[:enemyboard] 
  ship_num = session[:increase] || 0
  row = session[:row].to_i || 0
  col = session[:col].to_i || 0
  pos = session[:pos].to_s || ""
  if session[:err] != "Invalid Placement!"
    board.mastor_funk(session[:place_ship], row, col, pos) if pos != ""
  
  end
  if fire == "fire"
    session[:enemy].deploy_opp_ships()
  end

  if session[:increase] == 4 
    ship_num += 1
  end

  erb :bs3, locals: {board: board, enemyboard: enemyboard, hitter: hitter, row: row, col: col, pos: pos, ship_num: ship_num,  err: session[:err], fire_err: session[:fire_err]}
end

post '/page3' do
  session[:startfire] = ""
  session[:fire_err] = ""
  session[:err] = ""
  session[:increase] = params[:ship_num].to_i
  temp = params[:grid_cell] || []

  if temp != []
    temp = temp[0].delete "[]"
    temp = temp.split(",")
    session[:row] = temp[0]
    session[:col] = temp[1]
  end
  temp2 = params[:enemygrid_cell] || []
  if temp2 != []
    temp2 = temp2[0].delete "[]"
    temp2 = temp2.split(",")
    session[:row] = temp2[0]
    session[:col] = temp2[1]
  end

  session[:pos] = params[:pos]
  ships = [carrier = Ship.new(5, "(C)"), battleship = Ship.new(4, "(B)"), cruiser = Ship.new(3, "(c)"), submarine = Ship.new(2, "(S)")]
  if session[:board].mastor_funk(ships[session[:increase]],session[:row].to_i, session[:col].to_i, params[:pos].to_s) != "Invalid Placement!"
    session[:place_ship] = ships[session[:increase]]
    session[:increase] += 1
    session[:startfire] = "fire" if session[:increase] == 4
  else
    session[:err] = "Invalid Placement!"
  end

  spot = session[:board].pick_open_cell()
  if session[:increase] > 4
    if session[:enemyboard].atk_cell(session[:row].to_i, session[:col].to_i) != "Invalid Shot!"
      session[:board].atk_cell(spot[0], spot[1])
      session[:hitter] = hit_or_miss(session[:enemyboard], session[:row].to_i, session[:col].to_i)
    else
      session[:fire_err] = "Invalid Shot!"
    end
  end


  redirect '/page3'
end

#game info shall contain the info that you can click on your grid and fire at the enemy's grid once your ships have been placed
#also need to add more to the modal and have pop up message that says to place ships or fire at enemy!!

# board = session[:board]
# enemyboard = session[:enemyboard] 