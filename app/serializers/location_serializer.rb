class LocationSerializer < ActiveModel::Serializer
  attributes  :id, :driver_id, :lat, :lng, :rickshaw_server_ts

  # has_one :driver

	# convert timestamp
	# display driver username
	# calculate route_order_index
	# parse status from the full status sent by rickshaw


end
