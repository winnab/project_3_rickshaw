class Stop < ActiveRecord::Base
	attr_accessible	:id, :driver_id, :scheduled_datetime, 
									:stop_contact_name, :job_status, :scheduled_status, 
									:client_name, :stop_type, :rickshaw_foreign_id, 
									:stop_address, :latitude, :longitude, :stop_key
	
	belongs_to :driver

	validates :driver_id, 					presence: true
	validates :scheduled_datetime, 	presence: true
	validates :stop_contact_name, 	presence: true
	validates :client_name, 				presence: true
	validates :stop_type, 					presence: true
	validates :stop_address, 				presence: true

	geocoded_by :stop_address
	after_validation :geocode # auto-fetch coordinates								

	def generate_stop_key!
		stop_date = Time.at(self.scheduled_datetime).strftime("%Y%m%d")
	  other_values = (self.stop_contact_name + 
	  								self.stop_address + 
	  								self.client_name + 
	  								self.stop_type).parameterize.underscore
		self.stop_key = "#{stop_date}_#{other_values}"
		self.save
	end

	def check_stop_uniqueness! record
		stop_key = record.stop_key 
		stop = Stop.find_by_stop_key(stop_key)
		if (stop != nil)
			puts "updating stop"
			stop = record
			stop.save
		else
			puts "creating new stop and key"
			self.generate_stop_key!
		end	
	end

	def create_all_statuses! record
		statuses = record.status.split(" ")						
		if statuses.length > 1
			self.job_status = statuses[0]
			self.scheduled_status = statuses[1]
		elsif statuses.length == 1
			self.job_status = nil
			self.scheduled_status = statuses[0]
		else
			self.job_status = nil
			self.scheduled_status = nil
		end
	end

end