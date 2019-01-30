require 'sinatra'
require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"
require_relative "enemy.rb"
require_relative "game.rb"
use Rack::Session::Pool, :expire_after => 60 * 1


get '/' do
  session[:board] = Grid.new(12, "player")
  erb :bs1
end


post '/page1' do

redirect '/page2'
end

get '/page2' do
  
  erb :bs2
end

post '/page2' do
  
  session[:board] = Grid.new(params[:gridsize, "player")
  session[:enemyboard] = Grid.new(params[:gridsize], "ai")
  redirect '/page3'
end

get '/page3' do
  board = session[:board] 
  enemyboard = session[:enemyboard] 
  ship_num = session[:increase] || 0
  row = session[:row].to_i || 0
  col = session[:col].to_i || 0
  pos = session[:pos].to_s || ""
  board.mastor_func(session[:place_ship], row, col, pos) if pos != ""
  erb :bs3, locals: {board: board, enemyboard: enemyboard, row: row, col: col, pos: pos, ship_num: ship_num}
end

post '/page3' do
  session[:increase] = params[:ship_num]
  session[:row] = params[:row]
  session[:col] = params[:col]
  session[:pos] = params[:pos]
  ships = [carrier = Ship.new(5, "(C)"), battleship = Ship.new(4, "(B)"), cruiser = Ship.new(3, "(c)"), submarine = Ship.new(2, "(S)")]
  session[:place_ship] = ships[increase]
  session[:increase] += 1
  redirect '/page3'
end



# board = session[:board]
# enemyboard = session[:enemyboard]