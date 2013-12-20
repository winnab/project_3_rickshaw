class ChangeColumnNameTypeStopRequests < ActiveRecord::Migration
  def change
  	add_column :stop_requests, :stop_type, :string
  	remove_column :stop_requests, :type
  end
end
