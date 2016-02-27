# == Schema Information
#
# Table name: mentions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :integer
#  url         :string
#  status      :string
#  source      :string
#  secret      :string
#

require 'test_helper'

class MentionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
