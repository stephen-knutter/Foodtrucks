class AddMeridiemColumnsToHours < ActiveRecord::Migration
  def change
    add_column :hours, :mon_o_meridiem, :string, default: "am"
    add_column :hours, :mon_c_meridiem, :string, default: "pm"
    add_column :hours, :tue_o_meridiem, :string, default: "am"
    add_column :hours, :tue_c_meridiem, :string, default: "pm"
    add_column :hours, :wed_o_meridiem, :string, default: "am"
    add_column :hours, :wed_c_meridiem, :string, default: "pm"
    add_column :hours, :thu_o_meridiem, :string, default: "am"
    add_column :hours, :thu_c_meridiem, :string, default: "pm"
    add_column :hours, :fri_o_meridiem, :string, default: "am"
    add_column :hours, :fri_c_meridiem, :string, default: "pm"
    add_column :hours, :sat_o_meridiem, :string, default: "am"
    add_column :hours, :sat_c_meridiem, :string, default: "pm"
    add_column :hours, :sun_o_meridiem, :string, default: "am"
    add_column :hours, :sun_c_meridiem, :string, default: "pm"
  end
end
