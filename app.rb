ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'

class JsonParser < Sinatra::Base

  get '/' do
    @data = $data
    erb :index
  end

  post '/data' do
    $data = request.body.read
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
