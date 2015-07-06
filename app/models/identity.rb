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

class Identity < ActiveRecord::Base

  belongs_to :user
  validates_presence_of  :user_id, :uid, :provider
  validates_uniqueness_of :uid, scope: :provider

  def self.find_with_omniauth(auth)
    find_by(uid: auth['uid'], provider: auth['provider'])
  end

  #this will need to be refactored to be more generic, as every provider will store data slightly differently
  def self.create_with_omniauth(auth)
    case auth['provider']
    when "uber"
      create(uid: auth['uid'], provider: auth['provider'],  avatar: auth['info']['picture'], email: auth['info']['email'], first_name: auth['info']['first_name'], last_name: auth['info']['last_name'])
    when "google_oauth2"
      create(uid: auth['uid'], provider: auth['provider'],  avatar: auth['info']['image'], email: auth['info']['email'], first_name: auth['info']['first_name'], last_name: auth['info']['last_name'], oauth_token: auth['credentials']['token'] )
    when "producthunt"
      create(uid: auth['uid'], provider: auth['provider'], name: auth['info']['username'], avatar: auth['info']['avatar'], oauth_token: auth['credentials']['token'], oauth_expires_at: auth['credentials']['expires_at'], expires: auth['credentials']['expires'])
    else
      puts "nothing"
    end
  end


  def uber_auth(auth)
    create(uid: auth['uid'], provider: auth['provider'],  picture: auth['info']['picture'], email: auth['info']['email'], first_name: auth['info']['first_name'], last_name: auth['info']['last_name'])
  end

  def google_auth(auth)
  end

end
