class Stop < ActiveRecord::Base
	attr_accessible :driver_id, :client_name, :foreign_id, :stop_type, :address, 
									:route_order_index, :status, :stop_contact_name, :scheduled_time

	belongs_to :driver
end