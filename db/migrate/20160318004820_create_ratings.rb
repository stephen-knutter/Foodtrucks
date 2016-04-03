class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :store_id
      t.integer :user_id
      t.text :comment
      t.integer :rating

      t.timestamps null: false
    end
  end
end
