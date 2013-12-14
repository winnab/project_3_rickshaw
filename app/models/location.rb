class Location < ActiveRecord::Base
	attr_accessible :driver_id, :latitude, :longitude, :client_ts, :server_ts

	belongs_to :driver
end