class AddMultidayToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :multiday, :string
  end
end
