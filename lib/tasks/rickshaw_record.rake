require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do

  	desc "pull Rickshaw data into simulation models"
  	task :record => :environment do
  	
	  	# init
	    sleep_period = if ENV['SLEEP']
	    	ENV['SLEEP'].to_i
	    else
	    	30
	    end

	    num = if ENV['NUM']
	    	ENV['NUM'].to_i
	    else
	    	2 #120
	    end

	    def initGetStops
	    	date 					= Date.today.strftime("%Y%m%d")
	    	url 					= "https://gorickshaw.com/stops/#{date}"
	    	request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
	    	data_stop_loc = JSON.parse request_body
	    	return data_stop_loc
	    end

	    def initGetLocations
	    	url = "https://gorickshaw.com/location_history"
	    	request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
	    	data_driver_loc = JSON.parse request_body	
	    	return data_driver_loc
	    end
	    

	  	# start loop
	  	num.times do |n|
	  		# make request
		  	# convert response to arrays of hashes
		  		initGetLocations
		  		initGetStops
		  	
		  				data_stop_loc.each do |record| 
				location 		= Location.new(
					# need to figure out a way to pull only newest, not all
					
					# driver_id: 	convert_username_to_id(record),
					lat: 				record["lat"],
					lng: 				record["lng"],
					client_ts: 	Time.at(record["client_ts"]).to_datetime,
					)
				location.save!
			end


		  	# for locations use group_by username, and sort by timestamp, taking most recent only
		  	# create timeslot instance
		  	# create associated models
		  	# sleep for period and repeat
		  	sleep sleep_period
		  end

  	end

  	

  end
end
