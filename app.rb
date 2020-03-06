require 'sinatra/base'
require './lib/game'
require './lib/player'
require './helpers/attack_helper.rb'
require './lib/attack'

class Battle < Sinatra::Base

  enable :sessions
  helpers AttackHelper

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    attack_redirect($game)
  end
  
  get '/attack' do
    @game = $game
    @game.switch_turns
    erb :attack
  end
  
  get '/game-over' do
    @game = $game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
