class AddColumnUsernameLocationRequests < ActiveRecord::Migration
  def change
  	remove_column :stop_requests, :driver_username
  	add_column :stop_requests, :username, :string
  end
end
