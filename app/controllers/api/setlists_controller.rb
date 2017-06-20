class Api::SetlistsController < ApplicationController
  def show
    @setlist = Setlist.find(params[:id])
  end
# .includes(:setlist_songs).includes(:songs)
  def index
    @setlists = Setlist.includes(:setlist_songs, :songs)
  end

  def new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
