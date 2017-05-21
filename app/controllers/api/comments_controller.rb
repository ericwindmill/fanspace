class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors.full_messages, status: 422 
    end
  end

  def show
    @comment = Comment.find_by(setlist_id: params[:comment][:setlist_id])
  end

  def index
    @comments = Comment.where(setlist_id: params[:comment][:setlist_id])
  end


  def update
    @comment = Comment.find(params[:comment][:id])
    if @comment.update(comment_params)
      render json: @comment
    else 
      render json: @comment.errors.full_messages, status: 422

  end

  def destroy
    @comment = Comment.find(params[:comment][:id])
    @comment.destroy
    render json: @comment
  end


  private

  def comment_params
    params.require(:comment).permit(:user_id, :setlist_id, :title, :body)
  end
end
p