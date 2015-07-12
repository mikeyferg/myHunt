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

class Mention < ActiveRecord::Base
  belongs_to :product

end
