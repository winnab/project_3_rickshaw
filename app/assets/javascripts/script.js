var map;
var bounds;
var markers = [];
var stop_markers = [];
var directionsService = new google.maps.DirectionsService();
var directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: false});
//var data;

function main(){
	var refreshPeriod = 2000;
	initRoutesList();
	initMap();
	getData();
	// setInterval(getData, refreshPeriod)
}

function initRoutesList(){
	window.app || (window.app = {})
	app.$stopsList = $('#stops-list');
}

function initMap(){
  var mapOptions = {
      zoom: 15,
      center: new google.maps.LatLng(37.771947, -122.424438),
  }
  bounds = new google.maps.LatLngBounds();
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  directionsDisplay.setMap(map);
}

function getData(){
	$.getJSON("/drivers", handleData)
}

function normalizeData(data){
	normData = $.each(data.drivers, function(index, driver){
		$.each(driver.stops, function(index, stop){
			stop.index     = index + 1;
			stop.is_pickup = stop.stop_type == 'pickup';
			stop.is_done   = stop.job_status == 'done_ok';
		})
	})
	return normData
}

function handleData(data){
	window.data = normalizeData(data);
	renderDriversList(data);
	renderDriverCurrLocMap(data);
}

// *************************************************************************************
// left side of screen: driver routes list views
// *************************************************************************************

function renderDriversList(data){
	$("#active-drivers, #inactive-drivers").html("");
	$.each(data.drivers, renderDriversNamesList)
	// $(".driver-name").on("click", renderStops);
	$('.driver-name-box').on("click", function(){
		$('.stop-info-box').hide();
		var id = parseInt($(this).attr('id').replace( /\D+/g, ''));
		var driver = _.findWhere(data.drivers, {id: id});
		renderDriverStopsList(driver);
		renderDriverStopsMap(driver);
	});
}

function renderDriversNamesList(index, driver){
	var stops = driver.stops
	var container = stops.length > 0 ? "#active-drivers" : "#inactive-drivers"
	var	source = $("#driver_route").html(); 
	var template = Handlebars.compile(source);
	$(container).append(template(driver));	
}

function renderDriverStopsList(driver) {
  var	source = $("#driver_stops").html(); 
	var template = Handlebars.compile(source);
  $.each(driver.stops, function(index, stop){
  	$("#collapsed_driver_" + stop.driver_id + "_stops").append(template(stop));
	});
}

// *************************************************************************************
// map views
// *************************************************************************************


// general, change the marker to a custom icon ******************
function getMapIconImage(index, driver){
	var imgUrl = stop.is_done ? 'https://static.squarespace.com/static/518d93f7e4b02aeff5d41e7a/5236c374e4b0b842899401e8/52b1d0f4e4b0d0e269589e3d/1387385076916/done_marker_c_20.png' : 'https://static.squarespace.com/static/518d93f7e4b02aeff5d41e7a/5236c374e4b0b842899401e8/52b1d153e4b0867f46039a2a/1387385172164/to_do_marker_c_20.png'
	var image = {
		  url: imgUrl,
		  size: new google.maps.Size(20, 20),
		  origin: new google.maps.Point(0,0),
		  anchor: new google.maps.Point(0, 20)
	};
	return image
}

// drivers' locations  ********************************************
function renderDriverCurrLocMap(data){
	$.each(data.drivers, renderDriversCurrLocMap);
}


function renderDriversCurrLocMap(index, driver){
	if((driver.locations.length > 1) || (driver.locations.length == 1)){
		var location = driver.locations.slice(-1)[0];
		var latLng = new google.maps.LatLng(location.lat, location.lng);
		var marker = new google.maps.Marker({
	      position: latLng,
	      map: map,
	      title: driver.username,
        icon: getMapIconImage(driver)
	  });
	  markers.push(marker);
	  extendBoundaries();
	} 	
}

// stops and routes locations ***************************************
function renderDriverStopsMap(driver){
	clearMarkers();
	for(var i = 0; i < driver.stops.length; i++){
		if(i< driver.stops.length-1)
			renderDirections(driver.stops[i].stop_address, driver.stops[i+1].stop_address)
	}
	$.each(driver.stops, renderStopsLocations);
}

function renderStopsLocations(index, stop){
	var stopLatLng = new google.maps.LatLng(stop.latitude, stop.longitude);
	
	var stop_marker = new google.maps.Marker({
      position: stopLatLng,
      map: map,
      title: stop.stop_address,

  });
  stop_markers.push(stop_marker);
  extendBoundaries();
} 	


function renderDirections(start, end){
  var request = {
    origin:start,
    destination:end,
    travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(result, status) {
    console.log(status == google.maps.DirectionsStatus.OK, status)
    directionsDisplay.setDirections(result);
  });
}

// Sets the map on all markers in both arrays.
function setAllMap(map) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  };
  
  for (var s = 0; s < stop_markers.length; s++) {
    stop_markers[s].setMap(map);
  };
}

function extendBoundaries(){
	$.each(markers,function(i, m){ bounds.extend(m.position) })
	map.fitBounds(bounds);
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkers() { setAllMap(null); }
// Shows any markers currently in the array.
function showMarkers() { setAllMap(map); }
// Deletes all markers in the array by removing references to them.
function deleteMarkers() { clearMarkers(); markers = []; }


$(document).ready(main)

