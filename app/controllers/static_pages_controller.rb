class StaticPagesController < ApplicationController
  def home
    @tweets = Tweet.random
  end

  def help
  end

  def about
  end

  def contact
  end

  def termsofservice
  end
end
