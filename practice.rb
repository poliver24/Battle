require 'sinatra'
require 'shotgun'

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  "Hello"
end

get '/secret' do
  "Fuck off"
end

get '/not_secret' do
  "mmmmmm cake"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:practice_index)
end

get '/form' do
  erb(:practice_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:practice_index)
end
