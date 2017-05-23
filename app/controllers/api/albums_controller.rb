class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.all
    render json: 'api/albums/index'
  end
end
