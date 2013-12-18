class DropDatetimeFromStop < ActiveRecord::Migration
  def change
  	remove_column :stops, :scheduled_time
  	remove_column :stops, :scheduled_date
  	remove_column :stops, :scheduled_day
  end
end
