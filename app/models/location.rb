class Location < ActiveRecord::Base
	attr_accessible :id, :driver_id, :lat, :lng
	belongs_to :driver

	validates :driver_id, presence: true
	validates :lat, 			presence: true
	validates :lng, 			presence: true

end