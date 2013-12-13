class AddNewTimestampsToLocations < ActiveRecord::Migration
  def change
  	add_column(	:locations, 	:client_ts,	:datetime)
  	add_column(	:locations, 	:server_ts,	:datetime)
  	remove_column(:locations, :location_updated_at)
  end
end
