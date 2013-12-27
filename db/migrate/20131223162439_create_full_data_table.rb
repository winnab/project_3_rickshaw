class CreateFullDataTable < ActiveRecord::Migration
  def change
  	create_table :rickshaw_objects do |t|
  		t.text	:json_stops
  		t.text	:json_locations
  	end
  end
end
