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

  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :company, presence: true
  

	  
  def self.to_csv(attributes = column_names, options = {})
  	attributes = %w(name email company)
    CSV.generate(options) do |csv|
      csv << attributes
      all.each do |participant|
        csv << participant.attributes.values_at(*attributes)
      end
    end
  end

end
