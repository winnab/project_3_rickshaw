class Location < ActiveRecord::Base
	attr_accessible :id, :driver_id, :lat, :lng
	belongs_to :driver

	# helper method that changes name from created_at to location_ts
end