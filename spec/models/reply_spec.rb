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

require 'spec_helper'

describe Reply do
  pending "add some examples to (or delete) #{__FILE__}"
end
