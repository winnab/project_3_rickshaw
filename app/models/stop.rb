class Stop < ActiveRecord::Base
	attr_accessible	:id, :driver_id, :scheduled_datetime, 
									:stop_contact_name, :job_status, :scheduled_status, 
									:client_name, :stop_type, :rickshaw_foreign_id, 
									:stop_address, :latitude, :longitude, :stop_key
	
	belongs_to 	:driver	
	geocoded_by :stop_address
	after_validation :geocode

	validates :driver_id,  					presence: true
	validates :scheduled_datetime, 	presence: true
	validates :stop_contact_name, 	presence: true
	validates :client_name, 				presence: true
	validates :stop_type, 					presence: true
	validates :stop_address, 				presence: true
	
end