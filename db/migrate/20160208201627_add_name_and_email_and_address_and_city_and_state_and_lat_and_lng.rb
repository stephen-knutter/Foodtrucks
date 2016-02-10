class AddNameAndEmailAndAddressAndCityAndStateAndLatAndLng < ActiveRecord::Migration
  def change
      add_column :stores, :name, :string
      add_column :stores, :email, :string
      add_column :stores, :address, :string
      add_column :stores, :city, :string
      add_column :stores, :state, :string
      add_column :stores, :lat, :decimal, :precision => 15, :scale => 13
      add_column :stores, :lng, :decimal, :precision => 15, :scale => 13
  end

end