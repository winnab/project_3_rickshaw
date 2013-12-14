class StopsController < ApplicationController
  def index
    @stops = Stop.all

    respond_to do |format|
      format.html
      format.json  { render json: @stops }
    end
  end

	def show
    @stop = Stop.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @stop } # root:false if you don't want stop: {} to wrap around info
    end
	end


end
