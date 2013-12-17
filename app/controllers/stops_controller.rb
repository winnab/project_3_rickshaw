class StopsController < ApplicationController

  respond_to :html, :json

  def index
    @stops = Stop.all
		# @stops = Stop.where({scheduled_date: Date.today}).order('driver_id')
		# respond_with @stops

		# stops_today = Stop.where({scheduled_date: Date.today}).order('driver_id')
		# @active_drivers = (stops_today.map { |i| i.driver }).uniq
		
		# stops_not_today = Stop.all - stops_today
		# @inactive_drivers = (stops_not_today.map { |i| i.driver }).uniq
		render json: @stops
  end

	def show
    @stop = Stop.find(params[:id])
    respond_with @stop
	end


end
