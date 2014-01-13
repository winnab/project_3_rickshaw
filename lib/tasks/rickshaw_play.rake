require "open-uri"
require "json"

namespace :rickshaw do
  namespace :api do
  	desc "simulation: converting rickshaw recorded data into real data for map interface"
  	
  	task :play => :environment do

			sleep_period = if ENV['SLEEP']
				ENV['SLEEP'].to_i
			else
				1 # sleeps less than record request, playback will be faster than real-time
			end

			num = if ENV['NUM']
				ENV['NUM'].to_i
			else
				1	 
			end

			def new_stop_key stop
  			stop_time = stop.scheduled_datetime.strftime("%Y%m%d")
  			other_values 	= (	stop.stop_contact_name + 
				  								stop.stop_address + 
				  								stop.client_name + 
				  								stop.stop_type).parameterize.underscore
				stop.stop_key 	= "#{stop_time}_#{other_values}"
				stop_unique?(stop)
			end

			def stop_unique?(stop)
				stop = stop
				existing_stop = Stop.find_by_stop_key(stop.stop_key)
				unique_stop = (existing_stop == nil) ?  true : false
				if unique_stop
					puts "unique key. new stop being saved...."
				else
					existing_stop.delete
					stop.save
					puts "existing key. updating existing stop...."
				end
			end

			def driver_info_complete? record
				puts "checking for driver."
				return ((record.driver_id == nil) || (Driver.where(id: record.driver_id).count == 0)) ? false : true
			end

	  	def convert_driver_id_to_id record
	   		unless driver_info_complete? record
					driver_username 	= record.username.downcase
					driver 						= Driver.find_or_create_by_username(driver_username)
					puts "driver is #{driver.username}, id #{driver.id}"
					return driver.id
				end
				puts "driver is #{record.username}, id #{record.driver_id}"
			end

			def stop_statuses(record, stop)
				statuses = (record.status).split(" ")		
				puts "processing record status: #{record.status}"		
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
				stop.save
				puts "stop status: #{stop.job_status} #{stop.scheduled_status}"
			end
			
			num.times do |record|		
				# puts "////////////////////////////////////////////////////////////////////////////"
				# puts "// STARTING OVERALL LOOP //////////////////////////////////////////////////"
				# puts "///////////////////////////////////////////////////////////////////////////"
    # 		sleep sleep_period
    		
    		# init loop
    		load "#{Rails.root}/db/seeds.rb"

	    	# go through timestamps
	    	Timeslot.all.each do |timeslot|
	    		puts ""
	    		puts "---------------------------------------------------------------------------|"
	    		puts "-- processing new timeslot ------------------------------------------------|"
	    		puts "---------------------------------------------------------------------------|"

	    		if ( timeslot.location_requests.empty? || timeslot.stop_requests.empty? )
						puts "timeslot has 0 location_requests or stop requests. timeslot removed."
						timeslot.destroy
	    		else     	  			  	
		  		  puts ""
		  		  puts "-- processing timeslot stops --------------------------|"
		  		  puts "-------------------------------------------------------|"

    	  	 	timeslot.stop_requests.find_each do |record|
							# sleep sleep_period
							puts "-----"
							puts "processing new stop_request :::::::::::::::::::::::"
							stop = Stop.new(
								driver_id: convert_driver_id_to_id(record),
								stop_contact_name: record.stop_contact_name,
								client_name: record.client_name,
								stop_type: record.stop_type,
								stop_address: record.address,
								rickshaw_foreign_id: record.foreign_id,
								scheduled_datetime: Time.at(record.scheduled_time).to_datetime
							)
							if stop.valid?
								stop_statuses(record, stop)
								new_stop_key(stop)
								puts stop
								stop.save! 
								puts "errors? #{stop.errors.full_messages}"
							end
	    			end

		  		  puts ""
		  		  puts "-- processing timeslot locations ----------------------|"
		  		  puts "-------------------------------------------------------|"

		  	  	timeslot.location_requests.find_each do |record|
			  			sleep sleep_period
			  			puts "-----"
			  			puts "processing new location_request :::::::::::::::::::::::"
		  				location = Location.new(
		  					driver_id: convert_driver_id_to_id(record),
		  					lat: record.lat,
		  					lng: record.lng
		  				)
		  				location.save! if location.valid?
		  				puts "errors? #{location.errors.full_messages}"
		  			end
	    		end
	    	end
	    end
	    puts "#{Timeslot.count} Timeslots"
	    puts "#{Location.count} Locations"
	    puts "#{Stop.count} Stops"
	    puts "#{Stop.where(job_status: nil).count} stops to complete."
	    puts "#{Stop.where(job_status: "done_ok").count} stops done_ok."
	    puts "#{Driver.count} Drivers"	
  	end
	end
end

