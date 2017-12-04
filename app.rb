require "sinatra"

get '/' do
  "Hello World"
end

get '/secret' do
  "ello m8"
end

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
