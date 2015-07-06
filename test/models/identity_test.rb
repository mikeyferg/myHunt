# == Schema Information
#
# Table name: identities
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  provider         :string
#  uid              :string
#  user_id          :integer
#  avatar           :string
#  oauth_token      :string
#  oauth_expires_at :datetime
#  expires          :boolean
#  name             :string
#

require 'test_helper'

class IdentityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
