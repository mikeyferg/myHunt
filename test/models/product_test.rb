# == Schema Information
#
# Table name: products
#
#  id                     :integer          not null, primary key
#  ph_post_id             :integer
#  ph_post_name           :string
#  ph_post_tagline        :string
#  ph_post_screenshot_url :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
