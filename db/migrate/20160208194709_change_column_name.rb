class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :type, :store_type
  end
end
