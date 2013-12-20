class LocationRequest< ActiveRecord::Base
attr_accessible :id, :timeslot_id, :driver_id, :lat, :lng, :client_ts, :server_ts

belongs_to :timeslot

end
