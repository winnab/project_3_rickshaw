class LocationSerializer < ActiveModel::Serializer
  attributes  :id, :driver_id, :lat, :lng, :rickshaw_server_ts

end
