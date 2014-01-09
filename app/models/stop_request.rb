class StopRequest < ActiveRecord::Base
	attr_accessible :status, :driver_id, :timeslot_id, 
									:scheduled_time, :stop_contact_name, :address,
						    	:client_name, :stop_type, :foreign_id, 
						    	:username, :job_status, :scheduled_status, :stop_key

	belongs_to :timeslot
	belongs_to :driver

	validates :username, 						presence: true
	validates :status, 							presence: true
	validates :scheduled_time,			presence: true
	validates :stop_contact_name,		presence: true
	validates :address,							presence: true
	validates :client_name,					presence: true
	validates :stop_type,						presence: true

	def generate_stop_key!
		stop_date = Time.at(self.scheduled_time).strftime("%Y%m%d")
	  other_values = (self.stop_contact_name + self.address + self.client_name + self.stop_type).parameterize.underscore
		self.stop_key = "#{stop_date}_#{other_values}"
		self.save!
	end

end


