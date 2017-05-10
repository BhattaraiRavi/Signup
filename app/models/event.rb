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
	has_many :participants
end
