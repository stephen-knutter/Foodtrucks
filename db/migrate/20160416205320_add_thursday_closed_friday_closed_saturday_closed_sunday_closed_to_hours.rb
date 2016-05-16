class AddThursdayClosedFridayClosedSaturdayClosedSundayClosedToHours < ActiveRecord::Migration
  def change
    add_column :hours, :thursday_closed, :boolean, default: false
    add_column :hours, :friday_closed, :boolean, default: false
    add_column :hours, :saturday_closed, :boolean, default: false
    add_column :hours, :sunday_closed, :boolean, default: false
  end
end
