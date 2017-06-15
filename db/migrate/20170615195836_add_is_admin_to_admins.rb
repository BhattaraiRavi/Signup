class AddIsAdminToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :isadmin, :boolean
  end
end
