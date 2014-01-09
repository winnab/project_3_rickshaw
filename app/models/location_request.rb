class LocationRequest< ActiveRecord::Base
	attr_accessible :id, :timeslot_id, :driver_id, 
									:lat, :lng, :username

	belongs_to :timeslot
	belongs_to :driver

	# validates :username
	# validates	:lat
	# validates	:lng

end
