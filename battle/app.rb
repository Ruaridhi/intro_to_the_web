require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb(:play)
  end

  post '/names' do

    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/attack' do
    @name1 = $player1.name
    @name2 = $player2.name
    @player2_hp = $player2.reduce_hp
    erb(:attack)
  end



  run! if app_file == $0

end
