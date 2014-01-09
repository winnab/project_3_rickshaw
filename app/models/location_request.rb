class LocationRequest< ActiveRecord::Base
	attr_accessible :id, :timeslot_id, :driver_id, 
									:lat, :lng, :username

	belongs_to :timeslot
	belongs_to :driver

	validates :username,	presence: true
	validates	:lat,				presence: true
	validates	:lng,				presence: true

end
