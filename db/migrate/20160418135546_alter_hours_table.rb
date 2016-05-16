class AlterHoursTable < ActiveRecord::Migration
  def change
    rename_column :hours, :mon_o, :mon_o_hour
    rename_column :hours, :mon_c, :mon_c_hour
    rename_column :hours, :tue_o, :tue_o_hour
    rename_column :hours, :tue_c, :tue_c_hour
    rename_column :hours, :wed_o, :wed_o_hour
    rename_column :hours, :wed_c, :wed_c_hour
    rename_column :hours, :thu_o, :thu_o_hour
    rename_column :hours, :thu_c, :thu_c_hour
    rename_column :hours, :fri_o, :fri_o_hour
    rename_column :hours, :fri_c, :fri_c_hour
    rename_column :hours, :sat_o, :sat_o_hour
    rename_column :hours, :sat_c, :sat_c_hour
    rename_column :hours, :sun_o, :sun_o_hour
    rename_column :hours, :sun_c, :sun_c_hour
  end
end
