class AddMapIdToStores < ActiveRecord::Migration
  def change
    add_column :stores, :map_id, :integer
  end
end
