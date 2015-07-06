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
  belongs_to :user

  def self.find_with_omniauth(auth)
  find_by(uid: auth['uid'], provider: auth['provider'])
end

def self.create_with_omniauth(auth)
  create(uid: auth['uid'], provider: auth['provider'])
end

end
