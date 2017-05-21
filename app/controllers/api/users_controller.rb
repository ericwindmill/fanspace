class Api::UsersController < ApplicationController

  def create 
    @user = User.new(user_params)
    if @user.save
      log_in!(@user)
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
     end
  end

  def show 
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render 'api/users/show'
    else 
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :tagline, :location, :about, :profile_img_url)
  end

end
