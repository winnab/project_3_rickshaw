class CreateLocationRequestsTable < ActiveRecord::Migration
  def change

  	create_table 	 :location_requests do |t|
  		t.belongs_to  :timeslot
  		t.string      :username
  		t.float 	    :lat
  		t.float       :lng
  		t.integer	    :server_ts
  		t.integer	    :client_ts
  	end
  end
end
