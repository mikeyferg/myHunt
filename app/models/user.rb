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
#

class User < ActiveRecord::Base
  has_and_belongs_to_many :products
end
