class Driver < ActiveRecord::Base
	attr_accessible :username

	has_many :stops
	has_many :locations
end