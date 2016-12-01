ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'

class Bookmark_manager < Sinatra::Base

  get '/' do
    'JSON PARSING APP'
  end

  post '/data' do
    @data = request.body.read
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
