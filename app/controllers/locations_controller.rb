class LocationsController < ApplicationController
	
	respond_to :html, :json

	def index
		@locations = Location.all
		respond_with @locations
	end

	def show
		@location = Location.find(params[:id])
		respond_with @location
	end


end
