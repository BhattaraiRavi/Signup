# == Schema Information
#
# Table name: participants
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  company    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#

class Participant < ApplicationRecord

	belongs_to :event, optional: true

end
