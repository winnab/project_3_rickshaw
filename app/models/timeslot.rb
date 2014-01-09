class Timeslot < ActiveRecord::Base
	attr_accessible :id
	
	has_many :stop_requests
	has_many :location_requests

	validates :stop_requests, 		presence: true
	validates :location_requests,	presence: true
	
end