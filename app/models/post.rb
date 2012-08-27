# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

include ActionView::Helpers::SanitizeHelper

class Post < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :user

  before_save :strip_html

  validates :content, presence: true, length: { maximum: 30000 }
  validates :user_id, presence: true

  default_scope order: 'posts.created_at DESC'

  private
    def strip_html # Automatically strips any tags from any string to text typed column  
      for column in Post.content_columns  
        if column.type == :string || column.type == :text # if the column is text-typed  
          if !self[column.name].nil? # strip html from string if it's not empty  
             self[column.name] = strip_tags(self[column.name])  
          end  
        end  
      end  
    end   
end