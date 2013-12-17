class StopSerializer < ActiveModel::Serializer
  attributes 	:id, :driver_id, :job_status, :scheduled_status, :scheduled_datetime, 
  						:scheduled_date, :scheduled_day, :scheduled_time, :stop_contact_name, 
  						:stop_address, :client_name, :stop_type, :rickshaw_foreign_id

	# has_one :driver  					

	# convert timestamp
	# display driver username
	# calculate route_order_index
	# parse status from the full status sent by rickshaw
	# client name upcased



end
