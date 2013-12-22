class ChangeColumnRequestsTables < ActiveRecord::Migration
  def change
  	remove_column :stop_requests, :driver_id
  	remove_column :location_requests, :driver_id
  end
end
