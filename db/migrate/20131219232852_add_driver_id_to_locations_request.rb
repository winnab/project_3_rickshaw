class AddDriverIdToLocationsRequest < ActiveRecord::Migration
  def change
    add_column :location_requests, :driver_id, :string
  end
end
