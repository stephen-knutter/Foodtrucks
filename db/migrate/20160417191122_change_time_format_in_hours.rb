class ChangeTimeFormatInHours < ActiveRecord::Migration
  def change
    change_column :hours, :mon_o, :string, default: "00:00:00"
    change_column :hours, :mon_c, :string, default: "00:00:00"
    change_column :hours, :tue_o, :string, default: "00:00:00"
    change_column :hours, :tue_c, :string, default: "00:00:00"
    change_column :hours, :wed_o, :string, default: "00:00:00"
    change_column :hours, :wed_c, :string, default: "00:00:00"
    change_column :hours, :thu_o, :string, default: "00:00:00"
    change_column :hours, :thu_c, :string, default: "00:00:00"
    change_column :hours, :fri_o, :string, default: "00:00:00"
    change_column :hours, :fri_c, :string, default: "00:00:00"
    change_column :hours, :sat_o, :string, default: "00:00:00"
    change_column :hours, :sat_c, :string, default: "00:00:00"
    change_column :hours, :sun_o, :string, default: "00:00:00"
    change_column :hours, :sun_c, :string, default: "00:00:00"
  end
end
