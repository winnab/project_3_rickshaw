class AddTimestampsToLocations < ActiveRecord::Migration
  def change
	  	add_column(:locations, :location_updated_at, 	:datetime)
  end
end
