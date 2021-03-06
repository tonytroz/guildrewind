class PostsController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :destroy]
  before_filter :correct_user,   only: [:edit, :update, :destroy]

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def show
    @post = Post.find(params[:id])
    @reply = @post.replies.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      flash[:success] = "Post updated"
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    post.destroy
    flash[:success] = "Post destroyed."
    redirect_to posts_path
  end

  private

    def correct_user
      @post = current_user.posts.find_by_id(params[:id])
      redirect_to root_url if @post.nil?
    end
end