class DriverSerializer < ActiveModel::Serializer
  attributes :id, :username
	
	has_many :stops
  embed :ids, include: true

  has_many :locations
	embed :ids, include: true  
	
end
