Timeslot.destroy_all;
LocationRequest.destroy_all;
StopRequest.destroy_all;

timeslot1 = Timeslot.new;
timeslot2 = Timeslot.new;
timeslot3 = Timeslot.new;

StopRequest.create!(
	timeslot_id: 1,
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
	driver_id: nil,
	stop_key: "20140109_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff");

StopRequest.create!(
	timeslot_id: 1,
	status: "done_ok sched_ok",
	scheduled_time: 1389327527,
	stop_contact_name: "kathykupinska@gmail.com",
	address: "1439 Lawton St",
	client_name: "prim",
	foreign_id: "JKFX",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil,
	stop_key: "20140110_kathykupinska_gmail_com1439_lawton_stprimpickup");

StopRequest.create!(
	timeslot_id: 1,
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
	driver_id: nil,
	stop_key: "20140110_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff");

StopRequest.create!(
	timeslot_id: 1,
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
	driver_id: nil,
	stop_key: "20140110_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup");

StopRequest.create!(
	timeslot_id: 1,
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
	driver_id: nil,
	stop_key: "20140110_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup");

StopRequest.create!(
	timeslot_id: 1,
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
	driver_id: nil,
	stop_key: "20140110_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff");

StopRequest.create!(
	timeslot_id: 1,
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
	driver_id: nil,
	stop_key: "20140109_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140109_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140110_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140110_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140110_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140109_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140110_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff");

StopRequest.create!(
	timeslot_id: 2,
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
	driver_id: nil,
	stop_key: "20140109_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140109_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140110_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140110_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140110_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140110_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140109_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140109_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup");

StopRequest.create!(
	timeslot_id: 3,
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
	driver_id: nil,
	stop_key: "20140110_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff");

StopRequest.create!(
	timeslot_id: 3,
	status: "sched_ok",
	scheduled_time: 1389327527,
	stop_contact_name: "kathykupinska@gmail.com",
	address: "1439 Lawton St",
	client_name: "prim",
	foreign_id: "JKFX",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil,
	stop_key: "20140110_kathykupinska_gmail_com1439_lawton_stprimpickup");


LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47581, lng: -122.24988 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47572, lng: -122.24964 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47482, lng: -122.24947 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47474, lng: -122.24955 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47462, lng: -122.25041 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47458, lng: -122.25044 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47407, lng: -122.25034 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47404, lng: -122.25038 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47342, lng: -122.25512 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.47332, lng: -122.25527 );
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat:	37.46902, lng: -122.25437 );

LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat:	37.46892, lng: -122.25450 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat:	37.46820, lng: -122.26019 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat:	37.46814, lng: -122.26026 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat:	37.46764, lng: -122.26016 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat:	37.46763, lng: -122.26011 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat:	37.46778, lng: -122.25884 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.46782, lng: -122.25874 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.46813, lng: -122.25629 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.46807, lng: -122.25622 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.46257, lng: -122.25513 );
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.46252, lng: -122.25507 );

LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.46248, lng: -122.25503 );
LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.46240, lng: -122.25495 );
LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.46202, lng: -122.25481 );
LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.45317, lng: -122.25396 );
LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.45311, lng: -122.25392 );
LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.45315, lng: -122.25389 );
LocationRequest.create!( timeslot_id: timeslot3.id, username: 'wale', lat: 37.45381, lng: -122.25397 );

LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7719822, lng: -122.4243946,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'john', lat: 37.7866281, lng: -122.4419452,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7719963, lng: -122.4244801,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7694106, lng: -122.4114774,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'john', lat: 37.7428071, lng: -122.4005083,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7605733, lng: -122.4065402,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7495068, lng: -122.4045604,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.75064,   lng: -122.420193,   driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7404883, lng: -122.40699,    driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot1.id, username: 'wale', lat: 37.7383726, lng: -122.4069335,  driver_id: nil);

LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.738546,  lng: -122.4054287,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7385167, lng: -122.4054749,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7382975, lng: -122.4060605,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7350847, lng: -122.4106167,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7347572, lng: -122.4116097,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7349728, lng: -122.4183253,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7487944, lng: -122.4233492,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7438021, lng: -122.4048002,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7382829, lng: -122.4059961,  driver_id: nil);

LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7535026, lng: -122.4230579,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.771971,  lng: -122.4244381,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7509222, lng: -122.4200682,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7488051, lng: -122.4227874,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.765329,  lng: -122.4939657,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.768121,  lng: -122.4612033,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7805973, lng: -122.4039142,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7535542, lng: -122.4230719,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7626672, lng: -122.4203323,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7602441, lng: -122.4724732,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7720409, lng: -122.4244439,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'wale', lat: 37.7720631, lng: -122.4243637,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7485253, lng: -122.4603527,  driver_id: nil);
LocationRequest.create!( timeslot_id: timeslot2.id, username: 'john', lat: 37.7720281, lng: -122.4243742,  driver_id: nil);

timeslot1.save!;
timeslot2.save!;
timeslot3.save!;
