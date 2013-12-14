class Location < ActiveRecord::Base
	attr_accessible :id, :driver_id, :latitude, :longitude, :client_ts, :server_ts
	belongs_to :driver
end