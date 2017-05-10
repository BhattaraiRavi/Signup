class AddEventRefToParticipants < ActiveRecord::Migration[5.0]
  def change
    add_reference :participants, :event, foreign_key: true
  end
end
