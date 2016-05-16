class ChangeClosedColumnsName < ActiveRecord::Migration
  def change
    rename_column :hours, :monday_closed, :mon_closed
    rename_column :hours, :tuesday_closed, :tue_closed
    rename_column :hours, :wednesday_closed, :wed_closed
    rename_column :hours, :thursday_closed, :thu_closed
    rename_column :hours, :friday_closed, :fri_closed
    rename_column :hours, :saturday_closed, :sat_closed
    rename_column :hours, :sunday_closed, :sun_closed
  end
end
