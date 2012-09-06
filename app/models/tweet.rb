class Tweet < ActiveRecord::Base
  attr_accessible :content, :url

  validates :content, presence: true, length: { maximum: 140 }
  validates :url, presence: true

  def self.random
    Tweet.all(order: "RANDOM()")
  end
end
