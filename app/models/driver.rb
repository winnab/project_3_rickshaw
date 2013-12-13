class Driver < ActiveRecord::Base
	# attr_accessible :

	has_many :stops
	has_many :locations
end