class LocationSerializer < ActiveModel::Serializer
  attributes  :id, :driver_id, :lat, :lng, :rickshaw_server_ts

  def rickshaw_server_ts
  	object.created_at
  end

  def driver
  	driver.username
  end
end
