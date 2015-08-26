require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base
  configure :development do
    set :bind, '0.0.0.0'
    set :port, 3000
  end

  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    $game = Game.new
    @choice = params[:choices]
    @computer = $game.computer_hand
    @result = $game.who_wins(@choice.to_sym, @computer)
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
