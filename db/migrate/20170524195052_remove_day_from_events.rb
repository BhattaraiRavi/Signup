class RemoveDayFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :day, :string
  end
end
