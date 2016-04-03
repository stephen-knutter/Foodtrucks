class AddStoreIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :store_id, :int, default: 0
  end
end
