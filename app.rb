require "sinatra/base"
require "shotgun"
require "./lib/player"

class Battle < Sinatra::Base
  enable :sessions
  get '/home' do
    erb(:home)
  end

  post '/home' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/battle'
  end

  get '/battle' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @hp = 100
    erb :battle
  end

  get '/attack' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb :attack
  end

  run! if app_file == $0
end
