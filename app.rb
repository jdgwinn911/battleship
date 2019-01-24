require 'sinatra'
require_relative "ship.rb"
require_relative "cell.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"
require_relative "enemy.rb"
enable :sessions

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
  redirect '/page3'
end

get '/page3' do

  erb :bs3
end

post '/page3' do
end
