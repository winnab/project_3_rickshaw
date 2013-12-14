class StopsController < ApplicationController

  respond_to :html, :json

  def index
    @stops = Stop.all
    respond_with @stops
  end

	def show
    @stop = Stop.find(params[:id])
    respond_with @stop
	end


end
