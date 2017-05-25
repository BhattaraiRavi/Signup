class RemoveYearFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :year, :integer
  end
end
