class AddWednesdayClosedToHours < ActiveRecord::Migration
  def change
    add_column :hours, :wednesday_closed, :boolean, default: false
  end
end
