require 'sinatra'

# get '/' do
#   "Hello!"
#   "kuhdauduwed"
# end
#
# get '/hello/:name' do
#   # matches "GET /hello/foo" and "GET /hello/bar"
#   # params['name'] is 'foo' or 'bar'
#   "Hello #{params['name']}!"
# end
#
# get '/secret'do
#   "Hello, again..."
# end

get '/random-cat'do
  @rand_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:random)
end

get '/named-cat'do
  @age = params[:age]
  @name = params[:name]
  puts params[:age]
  puts params[:name]
  erb(:named)
end
