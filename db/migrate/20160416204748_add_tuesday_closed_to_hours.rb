class AddTuesdayClosedToHours < ActiveRecord::Migration
  def change
    add_column :hours, :tuesday_closed, :boolean, defaul: false
  end
end
