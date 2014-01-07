require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do
  	desc "pulling Rickshaw data into simulation models"
  	task :record => :environment do
	    sleep_period = if ENV['SLEEP']
	    	ENV['SLEEP'].to_i
	    else
		    0
	    end

	    num = if ENV['NUM']
	    	ENV['NUM'].to_i
	    else
	    	1 
	    end

	    def initGetStops
	    	date							= Date.today.strftime("%Y%m%d")
	    	url 							= "https://gorickshaw.com/stops/20140107"
	    	puts "requesting all stops..."
	    	request_body 			= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
	    	data_stop_loc 		= JSON.parse request_body
	    	return data_stop_loc
	    end

	    def initGetLocations
	    	url 							= "https://gorickshaw.com/location_history"
	    	puts "requesting most recent location for each driver..."
	    	request_body 			= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read;
	    	data_driver_loc 	= JSON.parse request_body;	
	    	return data_driver_loc.group_by { |r| r["username"] }
	    end

	    def convert_username_to_id record
				driver_username 	= record["driver_username"]
				driver 						= Driver.find_or_create_by_username(driver_username)
				driver.id
			end
	    
	    puts "about to enter loop. will loop #{num} times."

	  	num.times do |record|
	  		puts "iteration #{record}. sleeping for #{sleep_period} seconds."
		  	sleep sleep_period
		  	data_driver_loc = initGetLocations
		  	data_stop_loc   =	initGetStops

		  	# one hash for each driver with most current location
		  	drivers_with_latest_loc = data_driver_loc.each_with_object({}) do |(uname, locs), hsh|
		  		begin
		  			hsh[uname] = locs.max_by {|l| l["server_ts"]}
		  		rescue
		  			binding.pry unless $dont_pry
		  		end
		  	end
		  	
		  	timeslot = Timeslot.new

		  	drivers_with_latest_loc.each do |uname, record| 
		  		location 		= LocationRequest.create!(		  			
		  			# driver_id: 	convert_username_to_id(uname),
		  			username: 	record["username"],
		  			lat: 				record["lat"],
		  			lng: 				record["lng"],
		  			client_ts: 	record["client_ts"]
		  			)
		  		timeslot.location_requests.push location
		  		timeslot.save
		  	end

	  		data_stop_loc.each do |record|
	  			stop = StopRequest.create!(
	  				# driver_id: 						convert_username_to_id(record),
	  				username: 						record["driver_username"],
	  				status: 							record["status"],
	  				scheduled_time:				record["scheduled_time"],
	  				stop_contact_name: 		record["stop_contact_name"],
	  				address: 							record["address"],
	  				client_name: 					record["client_name"],
	  				stop_type:						record["type"],
	  				foreign_id:						record["foreign_id"]
	  			)
	  			timeslot.stop_requests.push stop
	  			timeslot.save!
		  	end
		  end	

  	end
  end
end
