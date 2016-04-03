class AddAttachmentProfilePicToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :stores, :profile_pic
  end
end
