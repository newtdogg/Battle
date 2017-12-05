require "sinatra"

get '/' do
  "Hello World"
end

get '/secret' do
  "ello m8"
end

get '/random-cat' do
  @name = ["Timmeh", "Fred", "Sam"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end
