class CreateStopRequestsTable < ActiveRecord::Migration
  def change
  	create_table :stop_requests do |t|
  		t.belongs_to  :timeslot
      t.string      :status					
  		t.integer     :scheduled_time 	
  		t.string      :stop_contact_name
  		t.string      :address 				
  		t.string      :client_name 		
  		t.string      :type 						
  		t.string      :foreign_id 			
  		t.string      :driver_username
  	end
  end
end
