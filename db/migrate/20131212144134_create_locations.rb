class CreateLocations < ActiveRecord::Migration
  def up
  	create_table 	:locations do |t|
      t.integer   :driver_id  		
      t.float			:latitude, 	:precision=>10, :scale=>6
  		t.float 		:longitude, :precision=>10, :scale=>6
  	end
  end

  def down
  	drop_table 	:locations
  end
end
