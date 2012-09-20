# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tweet < ActiveRecord::Base
  attr_accessible :content, :url

  validates :content, presence: true, length: { maximum: 140 }
  validates :url, presence: true

  def self.random
    Tweet.all(order: "RANDOM()")
  end
end
