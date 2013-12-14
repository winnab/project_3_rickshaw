class StopSerializer < ActiveModel::Serializer
  attributes 	:id, :client_name, :foreign_id, :stop_type, :address, 
  						:route_order_index, :status, :stop_contact_name, :scheduled_time,
  						:driver_id


	has_one :driver  					

	# convert timestamp
	# display driver username
	# calculate route_order_index
	# parse status from the full status sent by rickshaw


end
