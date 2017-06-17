class Api::SongsController < ApplicationController
  def show
    songs = Song.includes(:album)
    @song = songs.find(params[:id])
  end
end
