class Tweet < ActiveRecord::Base
  attr_accessible :content, :url

  def self.random
    Tweet.all(order: "RANDOM()")
  end
end
