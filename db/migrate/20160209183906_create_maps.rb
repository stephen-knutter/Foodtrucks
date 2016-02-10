class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :city
      t.string :state
      t.float :lat, :precision => 11, :scale => 6
      t.float :lng, :precision => 11, :scale => 6
      
      
      t.timestamps null: false
    end
  end
end
