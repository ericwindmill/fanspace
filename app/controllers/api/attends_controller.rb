class Api::AttendsController < ApplicationController
  def create
    @attend = Attend.create(attend_params)
    render 'api/setlists/show'
  end




  def attend_params
    params.require(:attend).permit(:user_id, :setlist_id)
end
