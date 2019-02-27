require 'sinatra/base'
require './lib/bookmark'

class Bookmarks < Sinatra::Base
  get '/' do
    "Bookmark Manager!"
  end

  get '/bookmarks' do
    # p ENV
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  post '/bookmark' do
    Bookmark.create(params[:url])
    redirect ('/bookmarks')
  end







  # start the server if ruby file executed directly
  run! if app_file == $0
end
