Driver.destroy_all
Location.destroy_all
Stop.destroy_all

g_driver = Driver.create!({ username: "gautam"})
d_driver = Driver.create!({ username: "divya"})
w_driver = Driver.create!({ username: "winna"})
m_driver = Driver.create!({ username: "murph"})


stop_1 = Stop.create!({
	driver_id: g_driver.id,
	client_name: "albertandeve",
	stop_type: "pickup",
	address: "2050 Galvez Ave, 94124",	
	route_order_index: 0,
	status: "done_ok sched_ok",
	stop_contact_name: "Brandon Tomlinson",
	scheduled_time: "Wed Nov 27 2013 18:50:00 GMT+0000 (GMT)"	
})

stop_2 = Stop.create!({
	driver_id: g_driver.id,	
	client_name: "albertandeve",
	stop_type: "dropoff",
	address: "600 Fell St. Apt. 202, 94102",
	route_order_index: 1,					
	status: "done_ok sched_ok",
	stop_contact_name:"Ashley",
	scheduled_time: "Wed Nov 27 2013 19:00:00 GMT+0000 (GMT)",
})

stop_3 = Stop.create!({
	driver_id: d_driver.id,	
	client_name: "albertandeve",
	stop_type: "dropoff",
	address: "45 Park Hill Ave, 94117",	
	route_order_index: 0,		
	status: "done_ok sched_ok",
	stop_contact_name:"Lewis",
	scheduled_time: "Wed Nov 27 2013 19:10:00 GMT+0000 (GMT)",
})

stop_4 = Stop.create!({
	driver_id: d_driver.id,	
	client_name: "albertandeve",
	stop_type: "pickup",
	address: "400 Dolores Street Apt 10, 94110",
	route_order_index: 1,			
	status: "done_ok sched_ok",
	stop_contact_name: "Windberg",
	scheduled_time: "Wed Nov 27 2013 19:20:00 GMT+0000 (GMT)"
})


location_1 = Location.create!({
	driver_id: d_driver.id,
	latitude: 37.7719474, 
	longitude: -122.4244384, 
	server_ts: "Fri Dec 13 2013 07:29:24 GMT+0000 (GMT)", 
	client_ts: "Fri Dec 13 2013 07:24:16 GMT+0000 (GMT)"
})

location_2 = Location.create!({	
	driver_id: d_driver.id,
	latitude: 37.7719474, 
	longitude: -122.4244384, 
	server_ts: "Fri Dec 13 2013 07:29:24 GMT+0000 (GMT)", 
	client_ts: "Fri Dec 13 2013 07:24:16 GMT+0000 (GMT)"
})

location_3 = Location.create!({
	driver_id: d_driver.id,
	latitude: 37.7719474, 
	longitude: -122.4244384,
	server_ts: "Fri Dec 13 2013 07:40:51 GMT+0000 (GMT)",
	client_ts: "Fri Dec 13 2013 07:24:16 GMT+0000 (GMT)"
})

location_4 = Location.create!({
	driver_id: d_driver.id,
	latitude: 37.7719474, 
	longitude: -122.4244384, 
	server_ts: "Fri Dec 13 2013 07:40:51 GMT+0000 (GMT)", 
	client_ts: "Fri Dec 13 2013 07:24:16 GMT+0000 (GMT)"
})