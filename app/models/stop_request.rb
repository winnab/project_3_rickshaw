class StopRequest < ActiveRecord::Base
attr_accessible :status, :driver_id, :timeslot_id, :scheduled_time, :stop_contact_name, :address,
:client_name, :stop_type, :foreign_id, :driver_username, :job_status, :scheduled_status

belongs_to :timeslot


end
