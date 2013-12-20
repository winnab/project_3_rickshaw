class AddScheduledStatusJobStatusToStopRequests < ActiveRecord::Migration
  def change
    add_column :stop_requests, :scheduled_status, :string
    add_column :stop_requests, :job_status, :string
  end
end
