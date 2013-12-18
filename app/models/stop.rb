class Stop < ActiveRecord::Base
	attr_accessible :id, :driver_id, :job_status, :scheduled_datetime, :stop_contact_name, 
									:client_name, :stop_type, :rickshaw_foreign_id, :stop_address, :latitude, :longitude

	geocoded_by :stop_address
	after_validation :geocode # auto-fetch coordinates								
	belongs_to :driver

	def today_stop_list

	end

	def driver_daily_total_jobs

	end

	def driver_daily_remaining_jobs
	end

	def client
		client_name.capitalize
	end

	def stop_address_lat_lng
		# insert
	end


end