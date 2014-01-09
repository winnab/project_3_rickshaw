class RemoveColumnServerTsFromLocationRequests < ActiveRecord::Migration
  def change
  	remove_column :location_requests, :server_ts
  end
end
