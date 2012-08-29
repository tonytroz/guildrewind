class RepliesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user,   only: [:show, :edit, :update, :destroy]

  def index
    @replies = Reply.find(:all, conditions: ['poster_id = ? or replier_id = ?',current_user.id, current_user.id])
  end

  def show
    @reply.unread = false
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @reply = @post.replies.build(params[:reply])
    @reply.poster_id = params[:poster_id]
    @reply.replier_id = current_user.id
    if @reply.save
      flash[:success] = "Reply created!"
      redirect_to replies_path
    else
      render 'posts/show'
    end
  end

  def update
    if @reply.update_attributes(params[:reply])
      flash[:success] = "Reply updated"
      redirect_to @reply
    else
      render 'edit'
    end
  end

  def destroy
    @reply.destroy
    redirect_to replies_path
  end

  private

    def correct_user
      @reply = Reply.find(params[:id])
      redirect_to root_url unless @reply.poster_id == current_user.id or @reply.replier_id == current_user.id
    end
end
