# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fromdate   :datetime
#  todate     :datetime
#  multiday   :string
#

class Event < ApplicationRecord
	mount_uploader :image, ImageUploader

	has_many :participants

	def self.search(search)
 		where("title LIKE ? or fromdate LIKE ? or todate LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  	end

end

