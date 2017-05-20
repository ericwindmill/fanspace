class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: 'api/comments/show'
    else
      render json: @comment.errors.full_errors, status: 422 
  end

  def show
    @comment = Comment.find_by(setlist_id: params[:comment][:setlist_id])
  end

  def index
    @comments = Comment.where(setlist_id: params[:comment][:setlist_id])
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def comment_params
    params.require(:comment).permit(:user_id, :setlist_id, :title, :body)
  end
end