class RepliesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user, except: [:new, :create, :index, :show]

  def index
    @replies = current_user.replies.find[:all]
  end

  def show
    @reply = Reply.find(params[:id])
  end

  def new
    @reply = Reply.new
  end

  def edit
    @reply = Reply.find(params[:id])
  end

  def create
    @reply = Reply.new(params[:reply])
  end

  def update
    @reply = Reply.find(params[:id])
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
  end

  private

    def correct_user
      @reply = current_user.replies.find_by_id(params[:poster_id]) || current_user.replies.find_by_id(params[:replier_id])
      redirect_to root_url if @reply.nil?
    end
end
