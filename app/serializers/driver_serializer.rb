class DriverSerializer < ActiveModel::Serializer
  attributes :id, :username, :done_stops
	
	has_many :stops
  # embed :ids, include: true

  has_many :locations
	# embed :ids, include: true  

	def username
		object.username.capitalize;
	end
	
	def done_stops
    object.stops.where(job_status: "done_ok").length
  end


end
