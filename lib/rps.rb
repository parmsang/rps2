require 'sinatra/base'

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
    @choice = params[:choices]
    @computer = rand(2)
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
