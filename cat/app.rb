require 'sinatra'

get '/random-cat' do
  @rand_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:random)
end

post '/named-cat' do
  p params
  @age = params[:age]
  @name = params[:name]
  puts params[:age]
  puts params[:name]
  erb(:named)
end

get '/form' do
  erb(:form)
end
