class Location < ActiveRecord::Base
	attr_accessible :id, :driver_id, :lat, :lng, :rickshaw_server_ts
	belongs_to :driver

	# update :latitude and :longitude so that it's :lat :lng
end