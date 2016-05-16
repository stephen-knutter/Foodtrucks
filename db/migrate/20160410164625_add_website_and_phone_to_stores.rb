class AddWebsiteAndPhoneToStores < ActiveRecord::Migration
  def change
    add_column :stores, :website, :string
    add_column :stores, :phone, :string
  end
end
