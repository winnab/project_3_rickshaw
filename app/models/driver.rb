class Driver < ActiveRecord::Base
	attr_accessible :id, :username

	has_many :stops
	has_many :locations
	has_many :stop_requests
	has_many :location_requests
end