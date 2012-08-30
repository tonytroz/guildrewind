class Server < ActiveRecord::Base
  attr_accessible :game_id, :name

  belongs_to :game
  has_many :posts
end
