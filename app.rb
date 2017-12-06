require "sinatra/base"
require "shotgun"


class Battle < Sinatra::Base
  enable :sessions
  get '/home' do
    erb(:home)
  end

  post '/home' do
    session[:name1] = params[:player_1_name]
    session[:name2] = params[:player_2_name]
    redirect '/battle'
  end

  get '/battle' do
    @player_1_name = session[:name1]
    @player_2_name = session[:name2]
    erb :battle, { hp: 100 }

  end

  run! if app_file == $0
end
