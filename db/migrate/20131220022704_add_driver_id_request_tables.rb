class AddDriverIdRequestTables < ActiveRecord::Migration
  def change
		add_column :stop_requests, :driver_id, :integer
  	add_column :location_requests, :driver_id, :integer

  end
end
