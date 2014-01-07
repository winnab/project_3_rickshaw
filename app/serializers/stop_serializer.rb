class StopSerializer < ActiveModel::Serializer
  attributes 	:id, :driver_id, :job_status, :scheduled_status, :scheduled_datetime, 
  						:human_date, :human_time, :stop_contact_name, 
  						:stop_address, :client_name, :stop_type, :rickshaw_foreign_id, :latitude, :longitude

	def human_date
		object.scheduled_datetime.strftime("%m/%d/%Y") rescue nil
	end

	def human_time
		object.scheduled_datetime.strftime("%H:%M") rescue nil
	end

		# capitalize name unless check it's an email address
	def client_name
		( object.client_name =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i ) ? object.client_name : object.client_name.capitalize
	end

	# capitalize name unless check it's an email address
	def stop_contact_name
		( object.stop_contact_name =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i ) ? object.stop_contact_name : object.stop_contact_name.capitalize
	end

end
