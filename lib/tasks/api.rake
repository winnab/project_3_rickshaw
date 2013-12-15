
namespace :api do
  namespace :v1 do
		
		desc "Get Rickshaw updated route data."           
  	task :get_route_data do
			require "open-uri"
			require "json"
			date 					= Date.today.strftime("%Y%m%d")
			url 					= "https://gorickshaw.com/stops/#{date}"
			request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
			data_stop_loc =  JSON.parse request_body
			
			data_stop_loc.each do |record|
				stop = Stop.new(
					status: 						record["status"].split(" "),
					job_status: 				status[0],
					scheduled_status: 	status[1],
					scheduled_datetime: Time.at(record["scheduled_time"]).to_datetime,
					scheduled_date: 		Time.at(record["scheduled_time"]).strftime("%m/%d/%Y"),
					scheduled_day: 			Time.at(record["scheduled_time"]).strftime("%A"),
					scheduled_time: 		Time.at(record["scheduled_time"]).strftime("%H:%M:%S"),
					stop_contact_name: 	record["stop_contact_name"],
					stop_address: 			record["address"],
					client_name: 				record["client_name"],
					stop_type: 					record["type"],
					foreign_id: 				record["foreign_id"],
					driver_username: 		record["driver_username"]
				)
				stop.save!
			end
		end

		desc "Get Rickshaw updated driver location data."           
  	task :get_driver_location_data do
			require "open-uri"
			require "json"
			url 					= "https://gorickshaw.com/location_history"
			request_body 	= open(url, :http_basic_authentication=>[ENV["RICKSHAW_KEY"], ENV["RICKSHAW_PASS"]]).read
			data_stop_loc =  JSON.parse request_body
			
			data_stop_loc.each do |record|
				location = Location.new(
					driver_username: record["driver_username"]
					latitude: record["lat"]
					longitude: record["lng"]
					client_ts: Time.at(record["client_ts"]).to_datetime
					server_ts: Time.at(record["server_ts"]).to_datetime
				)
				location.save!
			end
		end






	end
end