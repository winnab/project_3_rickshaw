class CreateLocations < ActiveRecord::Migration
  def up
  	create_table 	:locations do |t|
      t.belongs_to   :driver  		
      t.decimal      :latitude, :precision=>10, :scale=>6
      t.decimal      :longitude, :precision=>10, :scale=>6
      t.datetime     :server_ts
      t.datetime     :client_ts
  	end
  end

  def down
  	drop_table 	:locations
  end
end
