require 'sinatra'
require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"
require_relative "enemy.rb"
require_relative "game.rb"
use Rack::Session::Pool, :expire_after => 60 * 1


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
  
  session[:board] = Grid.new(params[:gridsize].to_i, "player")
  session[:enemyboard] = Grid.new(params[:gridsize].to_i, "ai")
  session[:enemy] = Enemy.new(session[:enemyboard], session[:board])
  session[:err] = ""
  redirect '/page3'
end

get '/page3' do
  board = session[:board] 
  enemyboard = session[:enemyboard] 
  ship_num = session[:increase] || 0
  row = session[:row].to_i || 0
  col = session[:col].to_i || 0
  pos = session[:pos].to_s || ""
  if session[:err] != "Invalid Placement!"
    board.mastor_funk(session[:place_ship], row, col, pos) if pos != "" 
  end
  
  if session[:increase] == 4
    session[:enemy].deploy_opp_ships()
  end
  erb :bs3, locals: {board: board, enemyboard: enemyboard, row: row, col: col, pos: pos, ship_num: ship_num,  err: session[:err]}
end

post '/page3' do
  session[:err] = ""
  session[:increase] = params[:ship_num].to_i
  session[:row] = params[:row]
  session[:col] = params[:col]
  session[:pos] = params[:pos]
  ships = [carrier = Ship.new(5, "(C)"), battleship = Ship.new(4, "(B)"), cruiser = Ship.new(3, "(c)"), submarine = Ship.new(2, "(S)")]
  if session[:board].mastor_funk(ships[session[:increase]],params[:row].to_i, params[:col].to_i, params[:pos].to_s) != "Invalid Placement!"
    session[:place_ship] = ships[session[:increase]]
    session[:increase] += 1
  else
    session[:err] = "Invalid Placement!"
  end
  session[:enemyboard].atk_cell(params[:row].to_i, params[:col].to_i)

  
  redirect '/page3'
end



# board = session[:board]
# enemyboard = session[:enemyboard]