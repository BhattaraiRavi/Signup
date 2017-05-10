class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :day
      t.integer :date
      t.string :month
      t.integer :year
      t.string :image

      t.timestamps
    end
  end
end
