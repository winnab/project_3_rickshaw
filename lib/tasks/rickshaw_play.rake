require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do

  	desc "pull simulation models data into dashboard models to then send out as json"
  	task :play => :environment do

	    sleep_period = if ENV['SLEEP']
	    	ENV['SLEEP'].to_i
	    else
	    	0 # sleeps less than request, playback will be faster than real-time
	    end
	    
	    loop do
	   
	   	def convert_driver_username_to_id stop
				driver_username 	= stop.username
				driver 						= Driver.find_or_create_by_username(driver_username)
				driver.id
			end

    	def create_stops_for_timeslot
    		stop = StopRequest.find_in_batches(batch_size: 50)  do |stop|
					stop.each do |stop|
						Stop.create!(
							driver_id: convert_driver_username_to_id(stop),
							job_status: stop.job_status ,
							scheduled_datetime: stop.scheduled_time,
							stop_contact_name: stop. stop_contact_name,
							stop_address: stop.address,
							client_name: stop.client_name,
							stop_type: stop.stop_type,
							rickshaw_foreign_id: stop.foreign_id)
		    	end
		   	end
		  end

	   	def convert_username_to_id stop
				driver_username 	= stop.username
				driver 						= Driver.find_or_create_by_username(driver_username)
				driver.id
			end
	    
			def create_locations_for_timeslot
	    	LocationRequest.find_in_batches(batch_size: 50) do |location|
	    		location.each do |location|
	    			Location.create!(
	    				driver_id: location.driver_id,
	    				lat: location.lat,
	    				lng: location.lng,
	    				rickshaw_server_ts: location.server_ts)
	    		end	    		
	    	end
	    end

      def create_join_timeslot
      	Timeslot.find_in_batches(batch_size: 50) do |timeslots|
      		timeslots.each do |timeslot|
  	    		# get time slots
  	    		# check to see if record exist, update
  	    		#
      		end
      	end
      end

	    def update_dashboard_models
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
	end
end

