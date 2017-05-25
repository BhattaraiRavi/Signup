class RemoveMonthFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :month, :string
  end
end
