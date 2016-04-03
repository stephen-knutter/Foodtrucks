class AddProfilePicToStores < ActiveRecord::Migration
  def change
    add_column :stores, :profile_pic, :string
  end
end
