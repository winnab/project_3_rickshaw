class Driver < ActiveRecord::Base
	attr_accessible :id, :username

	has_many :stops
	has_many :locations
end