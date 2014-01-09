require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do
  	desc "simulation: converting rickshaw recorded data into real data for map interface"
  	
  	task :play => :environment do
	    Time.zone = "UTC"
			sleep_period = if ENV['SLEEP']
				ENV['SLEEP'].to_i
			else
				5 # sleeps less than record request, playback will be faster than real-time
			end

			num = if ENV['NUM']
				ENV['NUM'].to_i
			else
				10   	 
			end

	  	def convert_driver_id_to_id record
	   		if ((record.driver_id == nil) || (Driver.where(id: record.driver_id).count == 0))
					driver_username 	= record.username.downcase
					driver 						= Driver.find_or_create_by_username(driver_username)
					driver.save!
					record.driver_id = driver.id
					record.save!
				end
				record.driver_id
			end
			
			num.times do |record|		
				puts "starting iteration #{record} of #{num}."
				puts "pausing for #{sleep_period} seconds"
    		sleep sleep_period
	    	
	    	i = 0
	    	Timeslot.all.each do |timeslot, i|
					puts "processing timeslot #{i} of #{Timeslot.count}"
	    		i++

	    		if ( timeslot.location_requests.empty? || timeslot.stop_requests.empty? )
						puts "timeslot has 0 location_requests or stop requests. timeslot removed."
						timeslot.destroy
	    		else     	  	
						puts "deleteing all records in Location and Stop to reinitialize demo"
						Location.delete_all
						Stop.delete_all	
		  		  
		  		  puts "saving location_requests to Location"
		  	  	timeslot.location_requests.find_each do |record|
		  				location = Location.new(
		  					driver_id: convert_driver_id_to_id(record),
		  					lat: record.lat,
		  					lng: record.lng
		  				)
		  				location.save if record.valid?
		  			end

	    	  	puts "saving stop_requests to Stop"
	    	  	timeslot.stop_requests.find_each do |record|
	    				stop = Stop.new(
	    					driver_id: convert_driver_id_to_id(record),
	    					stop_contact_name: record.stop_contact_name,
	    					stop_address: record.address,
	    					client_name: record.client_name,
	    					stop_type: record.stop_type,
	    					rickshaw_foreign_id: record.foreign_id,
	    					scheduled_datetime: Time.at(record.scheduled_time).utc.to_datetime
	    				)
		  				if stop.valid?
		  					stop.create_all_statuses!(record)
		  					stop.check_stop_uniqueness!(record)
		  				end
	    			end

	    		end
	    		
	    	end
	    end
  	end
	end
end

