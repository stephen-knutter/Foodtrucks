class ChangeLatLngFields < ActiveRecord::Migration
  def change
    # change_column :stores, :lat, :float_value, :precision => 11, :scale => 6
    # change_column :stores, :lng, :float_value, :precision => 11, :scale => 6
    change_column :stores, :lat, 'double precision USING CAST(lat AS double precision)'
    change_column :stores, :lng, 'double precision USING CAST(lng AS double precision)'
  end
end
