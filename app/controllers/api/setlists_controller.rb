class Api::SetlistsController < ApplicationController
  def show
    @setlist = Setlist.find(params[:id])
  end

  def index
    @setlists = Setlist.includes(:songs, :attends)
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
