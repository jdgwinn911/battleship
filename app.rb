require 'sinatra'
require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"
require_relative "enemy.rb"
require_relative "game.rb"

enable :sessions

get '/' do

  erb :bs1
end


post '/page1' do

redirect '/page2'
end

get '/page2' do
  session[:gridsize] = params[:gridsize]
  erb :bs2
end

post '/page2' do
  session[:gridsize] = params[:gridsize]
  redirect '/page3'
end

get '/page3' do
  params[:gridsize] = session[:gridsize]
  board = Grid.new(params[:gridsize].to_i, "player")
  # p board
  session[:board] = board
  # p session[:board]
  enemyboard = Grid.new(params[:gridsize].to_i, "ai")
  session[:enemyboard] = enemyboard
  
  erb :bs3, locals: {board: board}
end

post '/page3' do
  redirect '/page2'
end



# board = session[:board]
# enemyboard = session[:enemyboard]