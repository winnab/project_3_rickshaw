require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do

  	desc "pull Rickshaw data into simulation models"
  	task :record => :environment do
  	# init
  		StopRequest.delete_all
  		LocationRequest.delete_all
  		Timeslot.delete_all

	    sleep_period = if ENV['SLEEP']
	    	ENV['SLEEP'].to_i
	    else
	    	10
	    end

	    num = if ENV['NUM']
	    	ENV['NUM'].to_i
	    else
	    	120 # change to 120 after this is tested
	    end

	    def initGetStops
	    	# date 					= Date.today.strftime("%Y%m%d")
	    	url 					= "https://gorickshaw.com/stops/20131219"
	    	puts "about to request all stops"
	    	request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
	    	data_stop_loc = JSON.parse request_body
	    	return data_stop_loc
	    end

	    def initGetLocations
	    	url = "https://gorickshaw.com/location_history"
	    	puts "about to request all driver location data--slow..."
	    	request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read;
	    	data_driver_loc = JSON.parse request_body;	
	    	return data_driver_loc.group_by { |r| r["username"] }
	    end

	    def convert_username_to_id record
				driver_username 	= record["driver_username"]
				driver 						= Driver.find_or_create_by_username(driver_username)
				driver.id
			end
	    
	    puts "about to enter loop"

	  	num.times do |record|

	  		puts "starting loop. about to sleep for #{sleep_period} seconds"
		  	sleep sleep_period

	  		puts "about to start loop iteration #{record}"
		  	data_driver_loc = initGetLocations
		  	data_stop_loc   =	initGetStops

		  	# get an array of hashes where there is only one hash for each driver 
		  	# that reps the most current location
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
		  			driver_id: 	convert_username_to_id(uname),
		  			lat: 				record["lat"],
		  			lng: 				record["lng"],
		  			client_ts: 	record["client_ts"]
		  			)
		  		timeslot.location_request = location
		  		timeslot.save!
		  	end
		  	

	  		data_stop_loc.each do |record|
	  			status = record["status"].split(" ")
	  			stop = StopRequest.create!(
	  				driver_id: 						convert_username_to_id(record),
	  				driver_username: 			record["driver_username"],
	  				job_status: 					status[0],
	  				scheduled_status: 		status[1],
	  				scheduled_time:				record["scheduled_time"],
	  				stop_contact_name: 		record["stop_contact_name"],
	  				address: 							record["address"],
	  				client_name: 					record["client_name"].capitalize,
	  				stop_type:						record["type"],
	  				foreign_id:						record["foreign_id"]
	  			)
	  			timeslot.stop_request = stop
	  			timeslot.save!
		  	end

		  	puts "just before sleep, everything should be saved"
		  end	

  	end
  end
end
