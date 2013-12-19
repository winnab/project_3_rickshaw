require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do

  	desc "get data for simulation"
  	task :play => :environment do

	    sleep_period = if ENV['SLEEP']
	    	ENV['SLEEP'].to_i
	    else
	    	5 # sleeps less than request, playback will be faster than real-time
	    end

	    Timeslot.find_in_batches(batch_size: 50) do |timeslots|
	    	timeslots.each do |timeslot|
		    	# get time slots
		    	# check to see if record exist, update
		    	#
	    	end
	    end
  	end
  end
end