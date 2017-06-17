class Api::AlbumsController < ApplicationController
  def index
    albums = Album.includes(:songs)
    @albums = albums.all
  end
end
