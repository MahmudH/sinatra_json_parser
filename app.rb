ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require 'json'

class JsonParser < Sinatra::Base

  get '/' do
    #@data = $data
    #erb :index
  end

  post '/data' do
    @data = JSON.parse(request.body.read)
    puts @data
  end

  def greeting
    'Hello World'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
