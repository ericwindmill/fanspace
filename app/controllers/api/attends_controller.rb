class Api::AttendsController < ApplicationController
  def create
    @attend = Attend.create(attend_params)
    render 'api/setlists/show'
  end

  def destroy
    @attend = Attend.delete(params[:id])
    render 'api/setlist/show'
  end 

  private
  def attend_params
    params.require(:attend).permit(:user_id, :setlist_id)
  end
end
