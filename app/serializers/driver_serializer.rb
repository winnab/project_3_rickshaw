class DriverSerializer < ActiveModel::Serializer
  attributes :id, :username
	
	has_many :stops
  
  has_many :locations

  
  # sideload locations?
end
