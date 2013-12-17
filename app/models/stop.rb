class Stop < ActiveRecord::Base
	attr_accessible :id, :driver_id, :job_status, :scheduled_status, :scheduled_datetime, 
									:scheduled_date, :scheduled_day, :scheduled_time, :stop_contact_name, 
									:stop_address, :client_name, :stop_type, :rickshaw_foreign_id

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