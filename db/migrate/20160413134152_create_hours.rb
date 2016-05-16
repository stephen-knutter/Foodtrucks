class CreateHours < ActiveRecord::Migration
  def change
    create_table :hours do |t|
      t.integer :store_id
      t.time :mon_o
      t.time :mon_c
      t.time :tue_o
      t.time :tue_c
      t.time :wed_o
      t.time :wed_c
      t.time :thu_o
      t.time :thu_c
      t.time :fri_o
      t.time :fri_c
      t.time :sat_o
      t.time :sat_c
      t.time :sun_o
      t.time :sun_c

      t.timestamps null: false
    end
  end
end
