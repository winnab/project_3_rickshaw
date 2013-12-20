class Timeslot < ActiveRecord::Base
	attr_accessible :id
	has_one :stop_request
	has_one :location_request
end