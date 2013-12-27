class ChangeColumnTypesRickshawObject < ActiveRecord::Migration
  def change
  	remove_column :rickshaw_objects, :json_stops
  	remove_column :rickshaw_objects, :json_locations
  	add_column 		:rickshaw_objects, :json_stops, 			:string
  	add_column 		:rickshaw_objects, :json_locations, 	:string
  end
end
