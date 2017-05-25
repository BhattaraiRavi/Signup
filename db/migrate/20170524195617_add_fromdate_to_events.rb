class AddFromdateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :fromdate, :datetime
  end
end
