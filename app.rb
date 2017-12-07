require "sinatra/base"
require "shotgun"
require "./lib/player"

class Battle < Sinatra::Base
  enable :sessions
  STARTING_HP = 100
  get '/home' do
    erb(:home)
  end

  post '/home' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/battle'
  end

  get '/battle' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :battle
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_1.attack($player_2)
    erb :attack
  end

  run! if app_file == $0
end
