# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Entry < ActiveRecord::Base
	belongs_to :feed

	validates :atom_id, uniqueness: {scope: :feed_id}

	default_scope {
		order('created_at DESC')
	}
end
