class AddMondayCHourToHours < ActiveRecord::Migration
  def change
    add_column :hours, :mon_o_min, :string, default: "00"
    add_column :hours, :mon_c_min, :string, default: "00"
    add_column :hours, :tue_o_min, :string, default: "00"
    add_column :hours, :tue_c_min, :string, default: "00"
    add_column :hours, :wed_o_min, :string, default: "00"
    add_column :hours, :wed_c_min, :string, default: "00"
    add_column :hours, :thu_o_min, :string, default: "00"
    add_column :hours, :thu_c_min, :string, default: "00"
    add_column :hours, :fri_o_min, :string, default: "00"
    add_column :hours, :fri_c_min, :string, default: "00"
    add_column :hours, :sat_o_min, :string, default: "00"
    add_column :hours, :sat_c_min, :string, default: "00"
    add_column :hours, :sun_o_min, :string, default: "00"
    add_column :hours, :sun_c_min, :string, default: "00"
  end
end
