var map;
var bounds;
var markers = [];
var stop_markers = [];
var displayed_driver;
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
  // getMapIconImage(map, marker);
  directionsDisplay.setMap(map);
}

function getData(){
	$.getJSON("/drivers", handleData)
}

function normalizeData(data){
	normData = $.each(data.drivers, function(index, driver){
		$.each(driver.stops, function(index, stop){
			stop.index     		= index + 1;
			stop.is_pickup 		= stop.stop_type == 'pickup';
			stop.is_done   		= stop.job_status == 'done_ok';
			stop.is_due   		= stop.job_status == null;
			stop.is_overdue   = stop.job_status == 'overdue';
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
	if(displayed_driver != undefined){
		renderDriverStopsList(displayed_driver);
		renderDriverStopsMap(displayed_driver);
	}
	$('.driver-name-box').on("click", function(){
		$('.stop-info-box').hide();
		clearMarkers();
		var id = parseInt($(this).attr('id').replace( /\D+/g, ''));
		var driver = _.findWhere(data.drivers, {id: id});
		displayed_driver = driver;
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


function getStopStatusIcon(index, stop){
	console.log("before switch", stop.job_status, stop.is_done, stop.is_due, stop.is_overdue)
	switch(stop.job_status){
		case null:
			// to do
			var stop_image = {
				url: 'http://goo.gl/cJjBaI',
				size: new google.maps.Size(30, 30),
				origin: new google.maps.Point(30,0),
				anchor: new google.maps.Point(0, 45),
			};
			console.log(image)
			return stop_image;
			break;
		case "done_ok":
			// done
			var stop_image = {
				url: 'http://goo.gl/cJjBaI',
				size: new google.maps.Size(30, 30),
				origin: new google.maps.Point(60,0),
				anchor: new google.maps.Point(0, 60),
			}
			console.log(image)
			return stop_image;
			break;
		case "overdue":
			// overdue
			var stop_image = {
				url: 'http://goo.gl/cJjBaI',
				size: new google.maps.Size(90, 30),
				origin: new google.maps.Point(0,0),
				anchor: new google.maps.Point(0, 75),
			}
			console.log(image)
			return stop_image;
			break;
		default:
			var image = null 
			break;
		}

	console.log("after switch before return ", stop_image)
	return stop_image;
	console.log("after return image ", stop_image)
	debugger
}


// info window

// function getMapIconImage(map, marker){
// var contentString = '<div id="content">'+
//       '<div id="siteNotice">'+
//       '</div>'+
//       '<h1 id="firstHeading" class="firstHeading">Uluru</h1>'+
//       '<div id="bodyContent">'+
//       '<p><b>Test</b>, also referred to as <b>Ayers Rock</b>' +
//       '</div>'+
//       '</div>';

//   var infowindow = new google.maps.InfoWindow({
//       content: contentString
//   });

//   google.maps.event.addListener(marker, 'click', function() {
//     infowindow.open(map,marker);
//   });
// }

// drivers' locations  ********************************************


function renderDriverCurrLocMap(data){
	$.each(data.drivers, renderDriversCurrLocMap);
}

function renderDriversCurrLocMap(index, driver){
	
	if(driver.locations.length  >= 1){
		var image = {
			url: 'http://goo.gl/cJjBaI',
			size: new google.maps.Size(30, 30),
			origin: new google.maps.Point(0,0),
			anchor: new google.maps.Point(0, 45), 
			// url: 'http://goo.gl/cJjBaI', 
			// scaledSize: new google.maps.Size(30, 30), 
			// anchor: new google.maps.Point(0, 0), 
			// origin: new google.maps.Point(0,15), 
		};

		var location = driver.locations.slice(-1)[0];
		var latLng = new google.maps.LatLng(location.lat, location.lng);

		var marker = new google.maps.Marker({
			position: latLng,
			map: map,
			title: driver.username,
			icon: image
		});
		markers.push(marker);
		extendBoundaries();
	}
}

// stops and routes locations ***************************************
function renderDriverStopsMap(driver){
	// clearMarkers();
	// for(var i = 0; i < driver.stops.length; i++){
	// 	if(i< driver.stops.length-1)
	// 		renderDirections(driver.stops[i].stop_address, driver.stops[i+1].stop_address)
	// }
	$.each(driver.stops, renderStopsLocations);
}

function renderStopsLocations(index, stop){

	var stopLatLng = new google.maps.LatLng(stop.latitude, stop.longitude);
	
	var stop_marker = new google.maps.Marker({
      position: stopLatLng,
      map: map,
      title: stop.stop_address,
      icon: getStopStatusIcon(index, stop)
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

