class Remove < ActiveRecord::Migration
  def change
    remove_column :users, :url_name
    change_column :users, :profile_pic, :string, :default => 'no-profile.png'
  end
end
