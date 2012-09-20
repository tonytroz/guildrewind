# == Schema Information
#
# Table name: servers
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Server < ActiveRecord::Base
  attr_accessible :game_id, :name

  belongs_to :game
  has_many :posts
end
