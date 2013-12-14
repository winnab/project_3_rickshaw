class DriversController < ApplicationController
	
	respond_to :html, :json

	def index
		@drivers = Driver.all
		respond_with @drivers
	end

	def show
		@driver = Driver.find(params[:id])
		respond_with @driver
	end


end
