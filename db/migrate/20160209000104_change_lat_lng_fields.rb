class ChangeLatLngFields < ActiveRecord::Migration
  def change
    change_column :stores, :lat, :float_value, :precision => 11, :scale => 6
    change_column :stores, :lng, :float_value, :precision => 11, :scale => 6
  end
end
