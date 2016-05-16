class AddMondayClosedToHours < ActiveRecord::Migration
  def change
    add_column :hours, :monday_closed, :boolean
  end
end
