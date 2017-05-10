class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
