require "sinatra"
# include Capybara::DSL
# Capybara.default_driver = :selenium

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

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
