Driver.destroy_all
Location.destroy_all
Stop.destroy_all

g_driver = Driver.create!({ username: "gautam"})
d_driver = Driver.create!({ username: "divya"})
w_driver = Driver.create!({ username: "winna"})
m_driver = Driver.create!({ username: "murph"})


stop_1 = Stop.create!({
	driver_id: g_driver.id,
	job_status: "done_ok",
	scheduled_date: Date.today,
	scheduled_time: Time.now - 1.hour,
	stop_contact_name: "bob",
	stop_address: "2050 Galvez Ave, 94124",	
	client_name: "albertandeve",
	stop_type: "pickup",	
})

stop_2 = Stop.create!({
	driver_id: g_driver.id,	
	scheduled_date: Date.today,
	scheduled_time: Time.now + 2.hours,
	stop_contact_name:"ashley",
	stop_address: "600 Fell St. Apt. 202, 94102",
	client_name: "albertandeve",
	stop_type: "dropoff",
})

stop_3 = Stop.create!({
	driver_id: d_driver.id,	
	job_status: "done_ok",
	scheduled_date: Date.today,
	scheduled_time: Time.now - 2.hours,
	stop_contact_name:"Lewis",
	stop_address: "45 Park Hill Ave, 94117",	
	client_name: "albertandeve",
	stop_type: "dropoff",
})

stop_4 = Stop.create!({
	driver_id: d_driver.id,	
	scheduled_date: Date.today,
	scheduled_time: Time.now + 3.hours,
	stop_contact_name: "Windberg",
	stop_address: "400 Dolores Street Apt 10, 94110",
	client_name: "albertandeve",
	stop_type: "pickup",
})


location_1 = Location.create!({
	driver_id: d_driver.id,
	lat: 37.7719474, 
	lng: -122.4244384, 
	rickshaw_server_ts: Time.now 
})

location_2 = Location.create!({	
	driver_id: d_driver.id,
	lat: 37.7719474, 
	lng: -122.4244384, 
	rickshaw_server_ts: Time.now + 5.minutes
})

location_3 = Location.create!({
	driver_id: d_driver.id,
	lat: 37.7719474, 
	lng: -122.4244384,
	rickshaw_server_ts: Time.now + 5.minutes
})

location_4 = Location.create!({
	driver_id: d_driver.id,
	lat: 37.7719474, 
	lng: -122.4244384, 
	rickshaw_server_ts: Time.now + 5.minutes
})