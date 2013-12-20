class AddDriverIdToStopRequestsTable < ActiveRecord::Migration
  def change
    add_column :stop_requests, :driver_id, :string
  end
end
