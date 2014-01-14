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
	status: "overdue sched_ok",
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
	status: "overdue sched_ok",
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

stop20140110_2_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff = StopRequest.new(
	status: "done_ok sched_ok",
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

stop20140110_2_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff = StopRequest.new(
	status: "done_ok sched_ok",
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
	status: "overdue sched_ok",
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
	status: "sched_ok",
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

stop20140110_3_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup = StopRequest.new(
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

stop20140110_3_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup = StopRequest.new(
	status: "done_ok sched_ok",
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
	status: "done_ok sched_ok",
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
	status: "sched_ok",
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
	status: "sched_ok",
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
	address: "1439 Lawton St., San Francisco, CA",
	client_name: "prim",
	foreign_id: "JKFX",
	scheduled_status: nil,
	job_status: nil,
	stop_type: "pickup",
	username: "john",
	driver_id: nil);

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


timeslot2 = Timeslot.new;
timeslot2.stop_requests = [
stop20140110_2_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup,
stop20140110_2_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup,
stop20140110_2_richcarla_gmail_com101_27th_street_san_francisco_ca_united_statesprimdropoff,
stop20140109_2_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup,
stop20140110_2_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff,
stop20140109_2_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup,
stop20140109_2_nitin_shantharam850_jones_st_san_franciscoswapboxdropoff];


timeslot3 = Timeslot.new;
timeslot3.stop_requests = [
stop20140110_3_chelsea_grate_gmail_com1260_clay_street_san_francisco_ca_united_statesprimdropoff,
stop20140110_3_shazen23_gmail_com1462_clay_street_san_francisco_ca_united_statesprimpickup,
stop20140110_3_jwalter_sleeptrain_com3251_20th_avenue_space_101_san_francisco_ca_94132primpickup,
stop20140109_3_cfraher7_gmail_com1260_golden_gate_avenue_san_francisco_caprimpickup,
stop20140109_3_truebe_gmail_com925_guerrero_street_san_francisco_caprimpickup,
stop20140110_3_bradleybuda_gmail_com144_parnassus_avenue_apt_10_san_francisco_caprimdropoff,
stop20140110_3_kathykupinska_gmail_com1439_lawton_stprimpickup];



timeslot1.location_requests =		[ (LocationRequest.new(username: 'john', lat: 37.7891998, lng: -122.4137638))];
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7869534, lng: -122.4130054));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7866785, lng: -122.4134063));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.785719, lng: -122.423437));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7853801, lng: -122.4255192));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7838551, lng: -122.4376379));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7835893, lng: -122.4401027));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7826021, lng: -122.4459367));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7826021, lng: -122.4459367));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7826021, lng: -122.4459367));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7816008, lng: -122.4557356));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7808193, lng: -122.4705183));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7804745, lng: -122.4705661));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7789666, lng: -122.4705686));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7787454, lng: -122.4720829));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7783342, lng: -122.4722457));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7727584, lng: -122.4719146));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7724019, lng: -122.4781514));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7707854, lng: -122.4790708));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.768831, lng: -122.4784482));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7657318, lng: -122.4774208));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7581974, lng: -122.4767928));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7581974, lng: -122.4767928));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7580317, lng: -122.4784554));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7579516, lng: -122.476901));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7577803, lng: -122.476762));
timeslot1.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7309727, lng: -122.4749399));
timeslot2.location_requests =		[ (LocationRequest.new(username: 'john', lat: 37.7273016, lng: -122.4750415))];
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7269938, lng: -122.4752338));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7270070, lng: -122.4759169));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7271327, lng: -122.4760171));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7274721, lng: -122.4759732));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.727055, lng: -122.4760421));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7268967, lng: -122.4759184));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7268335, lng: -122.4721727));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.727103, lng: -122.4715039));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7345993, lng: -122.4714493));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7351063, lng: -122.4710596));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.73923, lng: -122.4658413));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7398296, lng: -122.4637272));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7409681, lng: -122.4577787));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7436639, lng: -122.4546247));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7457091, lng: -122.4509454));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.746739, lng: -122.445175));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.746705, lng: -122.4441942));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7481231, lng: -122.4425768));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7487725, lng: -122.4415002));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7487667, lng: -122.4376946));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7494273, lng: -122.4252795));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7490991, lng: -122.425049));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7471807, lng: -122.4249728));
timeslot2.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7470373, lng: -122.4245004));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7471718, lng: -122.4227838));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7472191, lng: -122.4244266));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7474009, lng: -122.4245689));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7494004, lng: -122.4248018));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7493457, lng: -122.4252426));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7486349, lng: -122.4381668));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.74864, lng: -122.4390834));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.748862, lng: -122.441234));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7482471, lng: -122.4424139));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7468211, lng: -122.4439234));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.746677, lng: -122.4443652));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7472215, lng: -122.4447803));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7469448, lng: -122.4447952));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7473794, lng: -122.4440885));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7482222, lng: -122.4444078));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7493398, lng: -122.4434694));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7531682, lng: -122.4425184));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7556866, lng: -122.4410306));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.756486, lng: -122.441004));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7566186, lng: -122.4417351));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7582051, lng: -122.443773));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7581747, lng: -122.4446359));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7587343, lng: -122.4456167));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7588237, lng: -122.4463506));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7594599, lng: -122.4463617));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7610036, lng: -122.4463558));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7612462, lng: -122.4464208));
timeslot3.location_requests.push (LocationRequest.new(username: 'john', lat: 37.7649737, lng: -122.4474531));
timeslot3.location_requests =		[ (LocationRequest.new(username: 'john', lat: 37.7651356, lng: -122.4478505))] 
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79301667, lng: -122.4164667));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79286667, lng: -122.4160667));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79136667, lng: -122.4157833));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79123333, lng: -122.4159167));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79103333, lng: -122.41735));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79096667, lng: -122.4174));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79011667, lng: -122.4172333));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.79006667, lng: -122.4173));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78903333, lng: -122.4252));
timeslot1.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78886667, lng: -122.42545));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.7817, lng: -122.42395));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78153333, lng: -122.4241667));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78033333, lng: -122.43365));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78023333, lng: -122.4337667));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.7794, lng: -122.4336));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.77938333, lng: -122.4335167));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.77963333, lng: -122.4314));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.7797, lng: -122.4312333));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78021667, lng: -122.42715));
timeslot2.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.78011667, lng: -122.4270333));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.77095, lng: -122.4252167));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.77086667, lng: -122.4251167));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.7708, lng: -122.42505));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.77066667, lng: -122.4249167));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.77003333, lng: -122.4246833));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.75528333, lng: -122.4232667));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.75518333, lng: -122.4232));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.75525, lng: -122.42315));
timeslot3.location_requests.push (LocationRequest.new(username: 'wale', lat: 37.75635, lng: -122.4232833));

timeslot1.save!
timeslot2.save!
timeslot3.save!

puts "rake task ends"
