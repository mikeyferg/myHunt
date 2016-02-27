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

class Mention < ActiveRecord::Base
  belongs_to :product
  #belongs_to :feed
end
