class AddStopKeyToStopRequestsAndStops < ActiveRecord::Migration
  def change
  	add_column :stop_requests, 	:stop_key, :string
  	add_column :stops, 					:stop_key, :string
  end
end
