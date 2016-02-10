class RemoveStoreTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :store_type
  end
end
