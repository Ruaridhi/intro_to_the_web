require 'sinatra'

get '/' do
  "Hello!"
  "kuhdauduwed"
end

get '/secret'do
  "Hello, again..."
end

get '/cat'do
  "<div style = 'border: 3px dashed red'>
  <img src = 'http://bit.ly/1eze8aE'>
  </div>"
end
