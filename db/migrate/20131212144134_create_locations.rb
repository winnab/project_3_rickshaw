class CreateLocations < ActiveRecord::Migration
  def up
  	create_table 	   :locations do |t|
      t.belongs_to   :driver  		
      t.decimal      :lat, :precision=>10, :scale=>6
      t.decimal      :lng, :precision=>10, :scale=>6
      t.datetime     :rickshaw_server_ts
      t.timestamps
  	end
  end

  def down
  	drop_table 	:locations
  end
end
