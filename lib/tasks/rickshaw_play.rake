require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do
  	desc "simulation data into real data then to json"
  	task :play => :environment do
	    sleep_period = if ENV['SLEEP']
	    	ENV['SLEEP'].to_i
	    else
	    	15 # sleeps less than request, playback will be faster than real-time
	    end
	    
    	Timeslot.find_in_batches(batch_size: 50) do |timeslot|
	    	Time.zone = "UTC"
	    	timeslot.location_requests.each do |location|
	  			Location.create!(
	  				driver_id: location.driver_id,
	  				lat: location.lat,
	  				lng: location.lng,
	  				rickshaw_server_ts: Time.at(location.client_ts).utc.to_datetime)    		
	    	end

	    	timeslot.stop_requests.each do |stop|
			   	def convert_driver_username_to_id stop
						driver_username 	= stop.username.downcase
						driver 						= Driver.find_or_create_by_username(driver_username)
						driver.id
					end

					Stop.create!(
						driver_id: convert_driver_username_to_id(stop),
						scheduled_datetime: Time.at(stop.scheduled_time).utc.to_datetime,
						stop_contact_name: stop.stop_contact_name.downcase,
						stop_address: stop.address,
						client_name: stop.client_name,
						stop_type: stop.stop_type,
						rickshaw_foreign_id: stop.foreign_id)

					statuses = stop.status.split(" ")
					if statuses.length > 1
						stop.job_status = statuses[0]
						stop.scheduled_status = statuses[1]
					elsif statuses.length == 1
						stop.job_status = nil
						stop.scheduled_status = statuses[0]
					else
						stop.job_status = nil
						stop.scheduled_status = nil
					end
					stop.save!					
				end
			end
  	end
	end
end

