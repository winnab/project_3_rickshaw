class CreateStops < ActiveRecord::Migration
  def up
  	create_table :stops do |t|
  		t.integer 	:driver_id
  		t.string 		:customer_name 			# distinct from name -- and more important to display
  		t.string 		:client_name 				# customer's client's business name
  		t.integer 	:foreign_id 				# ID numbers that our clients use/maintain
  		t.string 		:type 							# dropoff or pickup
  		t.string 		:address 						# for display in left nav
  		t.float			:latitude
  		t.float 		:longitude
  		t.integer 	:route_order_index	# determined by Rickshaw and sent
  		t.string 		:status							# to_do, done, overdue
  		t.timestamps
  	end
  end

  def down
  	drop_table :stops
  end
end
