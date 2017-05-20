class Api::AttendsController < ApplicationController
  def create
    @attend = Attend.new(attend_params)
    if @attend.save 
      render json: @attend
    else 
      render json: @attend.errors.full_messages, status: 422
    end
  end

  def destroy
    @attend = Attend.find_by(user_id: params[:attend][:user_id], setlist_id: params[:attend][:setlist_id])
    @attend.destroy
    render json: @attend
  end 

  private
  def attend_params
    params.require(:attend).permit(:user_id, :setlist_id)
  end
end
