class Location < ActiveRecord::Base
	attr_accessible :id, :driver_id, :latitude, :longitude, :client_ts, :server_ts
	belongs_to :driver

	# update :latitude and :longitude so that it's :lat :lng
end