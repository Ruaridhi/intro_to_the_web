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

get '/cat'do
  erb(:index)
end
