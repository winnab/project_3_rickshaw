class RemoveClientTsFromLocationRequest < ActiveRecord::Migration
  def change
  	remove_column :location_requests, :client_ts
  end
end
