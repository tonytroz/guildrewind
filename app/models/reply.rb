# == Schema Information
#
# Table name: replies
#
#  id         :integer          not null, primary key
#  content    :string(255)      not null
#  unread     :boolean          default(TRUE), not null
#  post_id    :integer          not null
#  poster_id  :integer          not null
#  replier_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reply < ActiveRecord::Base
  attr_accessible :content

  before_save :strip_html

  belongs_to :post
  belongs_to :poster, class_name: :user, foreign_key: :poster_id
  belongs_to :replier, class_name: :user, foreign_key: :replier_id

  default_scope order: 'replies.created_at DESC'

  validates :content, presence: true, length: { maximum: 5000 }
  validates :unread, presence: true
  validates :poster_id, presence: true
  validates :replier_id, presence: true
  validates :post_id, presence: true

  private
    def strip_html # Automatically strips any tags from any string to text typed column  
      for column in Reply.content_columns  
        if column.type == :string || column.type == :text # if the column is text-typed  
          if !self[column.name].nil? # strip html from string if it's not empty  
             self[column.name] = strip_tags(self[column.name])  
          end  
        end  
      end  
    end   
end
