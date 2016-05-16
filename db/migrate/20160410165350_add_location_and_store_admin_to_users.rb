class AddLocationAndStoreAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :string
    add_column :users, :store_admin, :boolean, default: 0
  end
end
