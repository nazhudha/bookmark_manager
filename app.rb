require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  # get '/bookmarks' do
  #   Bookmark_Manager = ["https://www.google.com/"]
  # end

  get '/bookmarks' do
    # Print the ENV variable
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end