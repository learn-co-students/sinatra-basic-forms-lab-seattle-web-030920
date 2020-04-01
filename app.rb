require_relative 'config/environment'
require_relative 'models/puppy.rb'
class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:age].to_i, params[:breed])
        erb :display_puppy
    end

end
