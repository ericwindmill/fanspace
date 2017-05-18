class Api::SongsController < ApplicationController
  def show
    @song = Songs.find(params[:id])
  end
end
