function main(){
	var refreshPeriod = 2000;
	initSelectors();
	initMap();
	getData();
	setInterval(getData, refreshPeriod)
}

function initSelectors(){
	window.app || (window.app = {})
	app.$stopsList = $('#stops-list');
}

function initMap(){

}

function getData(){
	$.getJSON("/drivers", handleData)
}

function handleData(data){
	renderDriversList(data);
	renderLocationData(data);
}

function renderDriversList(data){
	$("#active-drivers, #inactive-drivers").html("");
	$.each(data.drivers, renderDriverItem)
}

function renderDriverItem(index, driver){
  renderDriverName(index, driver);
  renderDriverRoute(index, driver); 
}

function renderDriverName(index, driver){
	container = driver.stops.length > 0 ? "#active-drivers" : "#inactive-drivers"
	$(container).append("<div id='driver_" + driver.id + "_stops'><h2 class='route-driver space-above'><span class='route-driver-text'>" + driver.username + "<span class='small'>&nbsp;&nbsp;( " + driver.stops.length + " )</span></span></h2> </div>");
}

function renderDriverRoute(index, driver){
	$.each(driver.stops, renderDriverStops)
}

function renderDriverStops(index, stop) {
  $("#driver_" + stop.driver_id + "_stops").append("<div class='row  space-above' ><div class='col-md-3 clear-padding'><div class='stop-number route-icons'> # </div>&nbsp;<div class='route-icons'><img src='http://localhost:3000/assets/done_pickup.png'></div>&nbsp;<div class='route-icons job-status'><img src='http://localhost:3000/assets/done_checkmark.png'></div></div><div class='col-md-9 clear-padding'><h3> stop contact: " + stop.stop_contact_name + "</h3><p class='details'> address: " + stop.stop_address + "</p><p class='details'> client: " + stop.client_name + "</p><p class='details'> scheduled time: " + stop.scheduled_time + "</p></div></div>");
}

function renderLocationData(){

}

$(document).ready(main)

