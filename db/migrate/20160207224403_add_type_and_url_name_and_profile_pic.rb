class AddTypeAndUrlNameAndProfilePic < ActiveRecord::Migration
  def change
    add_column :users, :type, :string
    add_column :users, :url_name, :string
    add_column :users, :profile_pic, :string
  end
end
