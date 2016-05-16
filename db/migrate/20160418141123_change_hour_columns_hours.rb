class ChangeHourColumnsHours < ActiveRecord::Migration
  def change
    change_column :hours, :mon_o_hour, :string, default: "00"
    change_column :hours, :mon_c_hour, :string, default: "00"
    change_column :hours, :tue_o_hour, :string, default: "00"
    change_column :hours, :tue_c_hour, :string, default: "00"
    change_column :hours, :wed_o_hour, :string, default: "00"
    change_column :hours, :wed_c_hour, :string, default: "00"
    change_column :hours, :thu_o_hour, :string, default: "00"
    change_column :hours, :thu_c_hour, :string, default: "00"
    change_column :hours, :fri_o_hour, :string, default: "00"
    change_column :hours, :fri_c_hour, :string, default: "00"
    change_column :hours, :sat_o_hour, :string, default: "00"
    change_column :hours, :sat_c_hour, :string, default: "00"
    change_column :hours, :sun_o_hour, :string, default: "00"
    change_column :hours, :sun_c_hour, :string, default: "00"
  end
end
