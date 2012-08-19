class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def new

  end

  def edit
  end

  def destroy

  end

  def show
  	@post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
  	
  end

end