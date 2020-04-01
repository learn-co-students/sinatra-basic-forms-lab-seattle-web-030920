require_relative 'config/environment'
require_relative 'models/puppy.rb'
require 'pry'
class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(name: params[:name], age: params[:age].to_i, breed: params[:breed])
        erb :display_puppy
    end

end
