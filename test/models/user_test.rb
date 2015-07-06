# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  ph_username  :string
#  ph_user_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  ph_image_url :string
#  name         :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
