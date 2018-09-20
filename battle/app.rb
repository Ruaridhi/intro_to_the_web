require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

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
    @player_1 = $player1
    @player_2 = $player2
    Game.new.attack($player2)
    erb(:attack)
  end



  run! if app_file == $0

end
