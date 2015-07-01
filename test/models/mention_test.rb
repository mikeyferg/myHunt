# == Schema Information
#
# Table name: mentions
#
#  id                  :integer          not null, primary key
#  mention_title       :string
#  mention_description :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_id          :integer
#

require 'test_helper'

class MentionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
