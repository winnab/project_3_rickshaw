require "open-uri"
require "json"

# for scheduling: https://github.com/javan/whenever ??

namespace :api do
  namespace :v1 do
		
		desc "Get Rickshaw updated route data."           
  	task :get_route_data => :environment do
			
			date 					= Date.today.strftime("%Y%m%d")
			url 					= "https://gorickshaw.com/stops/#{date}"
			request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
			data_stop_loc = JSON.parse request_body

			def convert_username_to_id record
				driver_username 	= record["driver_username"]
				driver 						= Driver.find_or_create_by_username(driver_username)
				driver.id
			end
			
			data_stop_loc.each do |record|
				status = record["status"].split(" ")

				stop = Stop.create!(
					driver_id: 						convert_username_to_id(record),
					job_status: 					status[0],
					# scheduled_status: 		status[1],
					scheduled_datetime: 	Time.at(record["scheduled_time"]).to_datetime,
					# scheduled_date: 			Time.at(record["scheduled_time"]).strftime("%m/%d/%Y"),
					# scheduled_day: 				Time.at(record["scheduled_time"]).strftime("%A"),
					# scheduled_time: 			Time.at(record["scheduled_time"]).strftime("%H:%M:%S"),
					stop_contact_name: 		record["stop_contact_name"],
					stop_address: 				record["address"],
					client_name: 					record["client_name"].capitalize,
					stop_type: 						record["type"],
					rickshaw_foreign_id:	record["foreign_id"],
				)
			end
		end

		desc "Get Rickshaw updated driver location data."           
  	task :get_driver_location_data => :environment do
			
			url 					= "https://gorickshaw.com/location_history"
						binding.pry

			request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
			data_stop_loc = JSON.parse request_body
			
			# def convert_username_to_id record
			# 	driver_username 	= record["username"]
			# 	driver 						= Driver.first_or_create(driver_username: record["username"])
			# 	driver.save!
			# 	return driver_id 	= driver[:id]
			# end

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

		end

	end
end