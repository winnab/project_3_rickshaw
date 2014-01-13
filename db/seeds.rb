puts "rake task start"

Driver.destroy_all;
Stop.destroy_all;
StopRequest.destroy_all;
Location.destroy_all;
LocationRequest.destroy_all;
Timeslot.destroy_all;

Driver.create!(username: "gautam");
Driver.create!(username: "divya");
Driver.create!(username: "john");
Driver.create!(username: "wale");

stop20140109_1_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff = StopRequest.new(
	status: "done_ok sched_ok",
	scheduled_time: 1389310357,
	stop_contact_name: "Nitin Shantharam",
	address: "850 Jones St, San Francisco",
	client_name: "swapbox",
	foreign_id: "vFr0ofFP-eU",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140110_1_kathykupinska_gmail_com1439_lawton_stprimpickup = StopRequest.new(
	status: "done_ok sched_ok",
	scheduled_time: 1389327527,
	stop_contact_name: "kathykupinska@gmail.com",
	address: "1439 Lawton St, San Francisco, CA",
	client_name: "prim",
	foreign_id: "JKFX",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil);

stop20140110_1_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff = StopRequest.new(
	status: "done_ok sched_ok",
	scheduled_time: 1389326328,
	stop_contact_name: "chelsea.grate@gmail.com",
	address: "1260 Clay Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "XXA9",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "wale",
	driver_id: nil);

stop20140110_1_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup = StopRequest.new(
	status: "overdue sched_ok",
	scheduled_time: 1389325986,
	stop_contact_name: "shazen23@gmail.com",
	address: "1462 Clay Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "7GVD",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140110_1_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup = StopRequest.new(
	status: "overdue sched_ok",
	scheduled_time: 1389328249,
	stop_contact_name: "jwalter@sleeptrain.com",
	address: "3251 20th Avenue, Space 101 San Francisco CA 94132",
	client_name: "prim",
	foreign_id: "ATAB",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil);

stop20140110_1_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff = StopRequest.new(
	status: "overdue sched_bad",
	scheduled_time: 1389322905,
	stop_contact_name: "richcarla@gmail.com",
	address: "101 27th Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "YSSK",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140109_1_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup = StopRequest.new(
	status: "overdue sched_ok",
	scheduled_time: 1389285938,
	stop_contact_name: "cfraher7@gmail.com",
	address: "1260 Golden Gate Avenue, San Francisco, CA",
	client_name: "prim",
	foreign_id: "NGYM",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140109_1_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup = StopRequest.new(
	status: "overdue sched_bad",
	scheduled_time: 1389288917,
	stop_contact_name: "truebe@gmail.com",
	address: "925 Guerrero Street, San Francisco, CA",
	client_name: "prim",
	foreign_id: "SUHP",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140110_2_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup = StopRequest.new(
	status: "done_ok sched_ok",
	scheduled_time: 1389325986,
	stop_contact_name: "shazen23@gmail.com",
	address: "1462 Clay Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "7GVD",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140110_2_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup = StopRequest.new(
	status: "done_late sched_ok",
	scheduled_time: 1389328249,
	stop_contact_name: "jwalter@sleeptrain.com",
	address: "3251 20th Avenue, Space 101 San Francisco CA 94132",
	client_name: "prim",
	foreign_id: "ATAB",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil);

stop20140110_2_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff = StopRequest.new(
	status: "done_ok sched_bad",
	scheduled_time: 1389322905,
	stop_contact_name: "richcarla@gmail.com",
	address: "101 27th Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "YSSK",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140109_2_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup = StopRequest.new(
	status: "done_late sched_ok",
	scheduled_time: 1389285938,
	stop_contact_name: "cfraher7@gmail.com",
	address: "1260 Golden Gate Avenue, San Francisco, CA",
	client_name: "prim",
	foreign_id: "NGYM",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140110_2_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff = StopRequest.new(
	status: "done_ok sched_bad",
	scheduled_time: 1389325168,
	stop_contact_name: "bradleybuda@gmail.com",
	address: "144 Parnassus Avenue, Apt 10, San Francisco, CA",
	client_name: "prim",
	foreign_id: "XP9N",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140109_2_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup = StopRequest.new(
	status: "missed sched_bad",
	scheduled_time: 1389288917,
	stop_contact_name: "truebe@gmail.com",
	address: "925 Guerrero Street, San Francisco, CA",
	client_name: "prim",
	foreign_id: "SUHP",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140109_2_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff = StopRequest.new(
	status: "sched_ok",
	scheduled_time: 1389310357,
	stop_contact_name: "Nitin Shantharam",
	address: "850 Jones St, San Francisco",
	client_name: "swapbox",
	foreign_id: "vFr0ofFP-eU",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140110_3_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff = StopRequest.new(
	status: "sched_bad",
	scheduled_time: 1389322905,
	stop_contact_name: "richcarla@gmail.com",
	address: "101 27th Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "YSSK",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140110_3_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff = StopRequest.new(
	status: "sched_ok",
	scheduled_time: 1389326328,
	stop_contact_name: "chelsea.grate@gmail.com",
	address: "1260 Clay Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "XXA9",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "wale",
	driver_id: nil);

stop20140110_3_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup = StopRequest.new(
	status: "sched_ok",
	scheduled_time: 1389325986,
	stop_contact_name: "shazen23@gmail.com",
	address: "1462 Clay Street, San Francisco, CA, United States",
	client_name: "prim",
	foreign_id: "7GVD",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140110_3_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup = StopRequest.new(
	status: "sched_ok",
	scheduled_time: 1389328249,
	stop_contact_name: "jwalter@sleeptrain.com",
	address: "3251 20th Avenue, Space 101 San Francisco CA 94132",
	client_name: "prim",
	foreign_id: "ATAB",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil);

stop20140109_3_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup = StopRequest.new(
	status: "sched_ok",
	scheduled_time: 1389285938,
	stop_contact_name: "cfraher7@gmail.com",
	address: "1260 Golden Gate Avenue, San Francisco, CA",
	client_name: "prim",
	foreign_id: "NGYM",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140109_3_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup = StopRequest.new(
	status: "sched_bad",
	scheduled_time: 1389288917,
	stop_contact_name: "truebe@gmail.com",
	address: "925 Guerrero Street, San Francisco, CA",
	client_name: "prim",
	foreign_id: "SUHP",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "wale",
	driver_id: nil);

stop20140110_3_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff = StopRequest.new(
	status: "sched_bad",
	scheduled_time: 1389325168,
	stop_contact_name: "bradleybuda@gmail.com",
	address: "144 Parnassus Avenue, Apt 10, San Francisco, CA",
	client_name: "prim",
	foreign_id: "XP9N",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "dropoff",
	username: "john",
	driver_id: nil);

stop20140110_3_kathykupinska_gmail_com1439_lawton_stprimpickup = StopRequest.new(
	status: "sched_ok",
	scheduled_time: 1389327527,
	stop_contact_name: "kathykupinska@gmail.com",
	address: "1439 Lawton St, San Francisco, CA",
	client_name: "prim",
	foreign_id: "JKFX",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil);

location24988 = LocationRequest.new(  username: 'wale', lat:	37.47581, lng: -122.24988 );
location24964 = LocationRequest.new(  username: 'wale', lat:	37.47572, lng: -122.24964 );
location24947 = LocationRequest.new(  username: 'wale', lat:	37.47482, lng: -122.24947 );
location24955 = LocationRequest.new(  username: 'wale', lat:	37.47474, lng: -122.24955 );
location25041 = LocationRequest.new(  username: 'wale', lat:	37.47462, lng: -122.25041 );
location25044 = LocationRequest.new(  username: 'wale', lat:	37.47458, lng: -122.25044 );
location25034 = LocationRequest.new(  username: 'wale', lat:	37.47407, lng: -122.25034 );
location25038 = LocationRequest.new(  username: 'wale', lat:	37.47404, lng: -122.25038 );
location25512 = LocationRequest.new(  username: 'wale', lat:	37.47342, lng: -122.25512 );
location25527 = LocationRequest.new(  username: 'wale', lat:	37.47332, lng: -122.25527 );
location25437 = LocationRequest.new(  username: 'wale', lat:	37.46902, lng: -122.25437 );

location25450 = LocationRequest.new(  username: 'wale', lat: 37.46892, lng: -122.25450 );
location26019 = LocationRequest.new(  username: 'wale', lat: 37.46820, lng: -122.26019 );
location26026 = LocationRequest.new(  username: 'wale', lat: 37.46814, lng: -122.26026 );
location26016 = LocationRequest.new(  username: 'wale', lat: 37.46764, lng: -122.26016 );
location26011 = LocationRequest.new(  username: 'wale', lat: 37.46763, lng: -122.26011 );
location25884 = LocationRequest.new(  username: 'wale', lat: 37.46778, lng: -122.25884 );
location25874 = LocationRequest.new(  username: 'wale', lat: 37.46782, lng: -122.25874 );
location25629 = LocationRequest.new(  username: 'wale', lat: 37.46813, lng: -122.25629 );
location25622 = LocationRequest.new(  username: 'wale', lat: 37.46807, lng: -122.25622 );
location25513 = LocationRequest.new(  username: 'wale', lat: 37.46257, lng: -122.25513 );
location25507 = LocationRequest.new(  username: 'wale', lat: 37.46252, lng: -122.25507 );

location25503 = LocationRequest.new(  username: 'wale', lat: 37.46248, lng: -122.25503 );
location25495 = LocationRequest.new(  username: 'wale', lat: 37.46240, lng: -122.25495 );
location25481 = LocationRequest.new(  username: 'wale', lat: 37.46202, lng: -122.25481 );
location25396 = LocationRequest.new(  username: 'wale', lat: 37.45317, lng: -122.25396 );
location25392 = LocationRequest.new(  username: 'wale', lat: 37.45311, lng: -122.25392 );
location25389 = LocationRequest.new(  username: 'wale', lat: 37.45315, lng: -122.25389 );
location25397 = LocationRequest.new(  username: 'wale', lat: 37.45381, lng: -122.25397 );

timeslot1 = Timeslot.new;
timeslot1.stop_requests = [
stop20140109_1_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff,
stop20140110_1_kathykupinska_gmail_com1439_lawton_stprimpickup,
stop20140110_1_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff,
stop20140110_1_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup,
stop20140110_1_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup,
stop20140110_1_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff,
stop20140109_1_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup,
stop20140109_1_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup];

timeslot1.location_requests = [location24988,
location24964,
location24947,
location24955,
location25041,
location25044,
location25034,
location25038,
location25512,
location25527,
location25437];

timeslot2 = Timeslot.new;
timeslot2.stop_requests = [
stop20140110_2_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup,
stop20140110_2_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup,
stop20140110_2_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff,
stop20140109_2_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup,
stop20140110_2_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff,
stop20140109_2_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup,
stop20140109_2_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff];

timeslot2.location_requests = [location25450,
location26019,
location26026,
location26016,
location26011,
location25884,
location25874,
location25629,
location25622,
location25513,
location25507];

timeslot3 = Timeslot.new;
timeslot3.stop_requests = [
stop20140110_3_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff,
stop20140110_3_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff,
stop20140110_3_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup,
stop20140110_3_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup,
stop20140109_3_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup,
stop20140109_3_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup,
stop20140110_3_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff,
stop20140110_3_kathykupinska_gmail_com1439_lawton_stprimpickup];

timeslot3.location_requests = [location25503,
location25495,
location25481,
location25396,
location25392,
location25389,
location25397];

timeslot1.save!
timeslot2.save!
timeslot3.save!



# non-legit locations for wale
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7719822, lng: -122.4243946,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7719963, lng: -122.4244801,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7694106, lng: -122.4114774,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7605733, lng: -122.4065402,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7495068, lng: -122.4045604,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.75064,   lng: -122.420193,   driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7404883, lng: -122.40699,    driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7383726, lng: -122.4069335,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.738546,  lng: -122.4054287,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7385167, lng: -122.4054749,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7382975, lng: -122.4060605,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7350847, lng: -122.4106167,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7347572, lng: -122.4116097,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7487944, lng: -122.4233492,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7535026, lng: -122.4230579,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7488051, lng: -122.4227874,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7805973, lng: -122.4039142,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7535542, lng: -122.4230719,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7720631, lng: -122.4243637,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'john', lat: 37.7866281, lng: -122.4419452,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot1.id, username: 'john', lat: 37.7428071, lng: -122.4005083,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7349728, lng: -122.4183253,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7438021, lng: -122.4048002,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7382829, lng: -122.4059961,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.771971,  lng: -122.4244381,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7509222, lng: -122.4200682,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.765329,  lng: -122.4939657,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.768121,  lng: -122.4612033,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7626672, lng: -122.4203323,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7602441, lng: -122.4724732,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7720409, lng: -122.4244439,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7485253, lng: -122.4603527,  driver_id: nil);
# LocationRequest.new( timeslot_id: timeslot2.id, username: 'john', lat: 37.7720281, lng: -122.4243742,  driver_id: nil);

puts "rake task ends"
