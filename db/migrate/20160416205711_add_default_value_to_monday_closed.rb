class AddDefaultValueToMondayClosed < ActiveRecord::Migration
  def change
    change_column :hours, :monday_closed, :boolean, default: false
  end
end
