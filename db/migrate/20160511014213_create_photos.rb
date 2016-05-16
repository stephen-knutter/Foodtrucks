class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.references :store, index: true
      t.references :user, index: true
      t.text :photo

      t.timestamps null: false
    end
    add_foreign_key :photos, :stores
    add_foreign_key :photos, :users
  end
end
