class AddTodateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :todate, :datetime
  end
end
