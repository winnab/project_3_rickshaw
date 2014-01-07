class Location < ActiveRecord::Base
	attr_accessible :id, :driver_id, :lat, :lng, :rickshaw_server_ts
	belongs_to :driver
end