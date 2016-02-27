# == Schema Information
#
# Table name: feeds
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string
#  url        :string
#  status     :string
#

require 'digest/md5'

class Feed < ActiveRecord::Base

  has_many :entries, dependent: :destroy

  validates :url, uniqueness: true


  def secret
		Digest::MD5.hexdigest(created_at.to_s)
  end

  def notified params
    update_attributes(:status => params["status"]["http"])

  	params['items'].each do |i|
  		entries.create( :title => i["title"], :url => i["permalinkUrl"], :content => i["content"])
  	end
  end

end
