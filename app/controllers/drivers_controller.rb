class DriversController < ApplicationController
	
	respond_to :json

	def index
		@drivers = Driver.all
	end

	def show
		@driver = Driver.find(params[:id])
	end


end
