# require "open-uri"
# require "json"

# namespace :rickshaw do
#   namespace :api do
#   	desc "simulation: converting rickshaw recorded data into real data for map interface"
#   	task :play => :environment do
# 	    Time.zone = "UTC"
# 	    sleep_period = if ENV['SLEEP']
# 	    	ENV['SLEEP'].to_i
# 	    else
# 	    	5 # sleeps less than record request, playback will be faster than real-time
# 	    end

# 	    puts "call clean_data if you want to check drivers, stop_requests and location_requests for nils and blanks"


# 	  	def convert_loc_driver_id_to_id location_request
# 	   		if ((location_request.driver_id == nil) || (Driver.where(id: location_request.driver_id).count == 0))
# 					driver_username 	= location_request.username.downcase
# 					driver 						= Driver.find_or_create_by_username(driver_username)
# 					driver.save!
# 					location_request.driver_id = driver.id
# 					location_request.save!
# 				end
# 				location_request.driver_id
# 			end

# 	   	def convert_stop_driver_username_to_id stop_request
# 	   		if ((stop_request.driver_id == nil) || (Driver.where(id: stop_request.driver_id).count == 0))
# 					driver_username 	= stop_request.username.downcase
# 					driver 						= Driver.find_or_create_by_username(driver_username)
# 					driver.save!
# 					stop_request.driver_id = driver.id
# 					stop_request.save!
# 				end
# 				stop_request.driver_id
# 			end

# 			def create_all_statuses stop_request
# 				statuses = stop_request.status.split(" ")						
# 				if statuses.length > 1
# 					stop_request.job_status = statuses[0]
# 					stop_request.scheduled_status = statuses[1]
# 				elsif statuses.length == 1
# 					stop_request.job_status = nil
# 					stop_request.scheduled_status = statuses[0]
# 				else
# 					stop_request.job_status = nil
# 					stop_request.scheduled_status = nil
# 				end
# 				stop_request.save!
# 				stop_request.job_status
# 				stop_request.scheduled_status
#   		end

# 	    total_remaining = Timeslot.count
# 	    puts "parsing #{total_remaining} Timeslot entries"
			
# 			# Save Timeslot entries to Location and Stop models
#     	Timeslot.find_each do |timeslot|
#     		puts "sleeping for #{sleep_period} seconds"
#     		sleep sleep_period

#     		if ( (timeslot.location_requests.count == 0 ) || (timeslot.stop_requests.count == 0) )
#     			puts "timeslot has 0 location_requests or stop requests. timeslot removed."
#     			timeslot.destroy
#     		else 
#     			puts "timeslot has location_requests and stop_requests. processing timeslot..."
    	  	
# 	  		  puts "saving location_requests to Location..."
# 	  	  	timeslot.location_requests.find_each do |location_request|
# 	  				Location.create!(
# 	  					driver_id: convert_loc_driver_id_to_id(location_request),
# 	  					lat: location_request.lat,
# 	  					lng: location_request.lng,
# 	  					rickshaw_server_ts: Time.at(location_request.client_ts).to_datetime   		
# 	  				)
# 	  			end

#     	  	puts "saving stop_requests to Stop..."
#     	  	timeslot.stop_requests.find_each do |stop_request|
#     				Stop.create!(
#     					driver_id: convert_stop_driver_username_to_id(stop_request),
#     					stop_contact_name: stop_request.stop_contact_name,
#     					stop_address: stop_request.address,
#     					client_name: stop_request.client_name,
#     					stop_type: stop_request.stop_type,
#     					rickshaw_foreign_id: stop_request.foreign_id,
#     					scheduled_datetime: Time.at(stop_request.scheduled_time).utc.to_datetime
#     					job_status: create_all_statuses(stop_request),
#     					scheduled_status: create_all_statuses(stop_request)
#     				)

# 		    	end
#     			timeslot.save!
#     		end
#     		# end Timeslot save

#     		total_remaining = total_remaining - 1
#     	  puts "timeslot locations and stops saved. iteration complete, #{total_remaining} remaining."	
#     	end

#   	end
# 	end
# end

