# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  day        :string
#  date       :integer
#  month      :string
#  year       :integer
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
	mount_uploader :image, ImageUploader

	has_many :participants

	def self.search(search)
 		where("title LIKE ? or month LIKE ? or year LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  	end

end

