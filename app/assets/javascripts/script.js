var map;
var bounds;
var driverLocIndex = 0;
var driverMarkers = [];
var stopMarkers = [];
var markers = $.merge(driverMarkers, stopMarkers);
var displayedDriver;
var directionsService = new google.maps.DirectionsService();
var directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: false});

function main(){
  initRoutesList();
  initMap();
  getData();
  // var refreshPeriod = 400;
  // setInterval(getData, refreshPeriod)
}

function initRoutesList(){
  window.app || (window.app = {})
  app.$stopsList = $('#stops-list');
}

function initMap(){
  var mapOptions = {
    zoom: 12,
    center: new google.maps.LatLng(37.771947, -122.424438),
    mapTypeControl: false,
    panControl: true,
    panControlOptions: {
        position: google.maps.ControlPosition.RIGHT_BOTTOM
    },
    zoomControl: true,
    zoomControlOptions: {
        style: google.maps.ZoomControlStyle.SMALL,
        position: google.maps.ControlPosition.TOP_RIGHT
    },
    scaleControl: true,
    scaleControlOptions: {
        position: google.maps.ControlPosition.TOP_RIGHT
    }
  } 
  bounds = new google.maps.LatLngBounds();
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  // getMapIconImage(map, marker);
  // directionsDisplay.setMap(map);
}

function getData(){
  $.getJSON("/drivers", handleData)
}

function normalizeData(data){
  normData = $.each(data.drivers, function(index, driver){
    driver.is_driving = driver.locations.length  >= 1;
    driver.has_stops  = driver.stops.length  >= 1;
    driver.is_working = (driver.is_driving == true && driver.has_stops == true)

    $.each(driver.stops, function(index, stop){
      stop.index = index + 1;
      stop.is_pickup 	  = stop.stop_type 	== 'pickup';
      stop.is_due 		  = stop.job_status == null;
      stop.is_done 		  = stop.job_status == 'done_ok';
      stop.is_overdue   = stop.job_status == 'overdue';
      stop.is_done_late = stop.job_status == 'done_late';
      stop.is_missed    = stop.job_status == 'missed';
    })
  })
  return normData
}

function handleData(data){
  window.data = normalizeData(data);
  renderDriversList(data);
  renderDriverCurrLocMap(data);
}

function handleButtons(data){
  // $('#refresh').on("click", toggleDataLoop);
  // $('#show-all-drivers').on("click", toggleShowAllDrivers);
}

function toggleDataLoop(){
  //   if(refreshPeriod != 0){
  //   setInterval(getData, refreshPeriod);
  //   var refreshPeriod = 0
  //   console.log(refreshPeriod);
  // }else if(refreshPeriod == 400){
  //   setInterval(getData, refreshPeriod);
  //   var refreshPeriod = 500
  // }else{
  //   console.log("else" + refreshPeriod)
  // }
  // setInterval(getData, refreshPeriod)
  // return refreshPeriod;
}

function toggleShowAllDrivers(data){
  // $('.show-all-drivers').on("click",function(){
  //   renderDriversList(data);
  //   renderDriverCurrLocMap(data);
  // })
}


function renderDriversList(data){
  $("#active-drivers, #inactive-drivers").html("");
  $.each(data.drivers, renderDriversNamesList)
  
  if(displayedDriver != undefined){
    renderDriverStopsList(displayedDriver);
    renderDriverStopsMap(displayedDriver);
  }
    
  $('.driver-name-box').on("click", function(){
    $('.stops-box').hide(600);
    clearStopMarkers();
    var id = parseInt($(this).attr('id').replace( /\D+/g, ''));
    var driver = _.findWhere(data.drivers, {id: id});
    displayedDriver = driver;
    renderDriverStopsList(driver);
    renderDriverStopsMap(driver);
    });

  // $('.driver-name-box').on("click", function(){
  //   clearStopMarkers();
  //   var id = parseInt($(this).attr('id').replace( /\D+/g, ''));
  //   var driver = _.findWhere(data.drivers, {id: id});
  //   if(driver.has_stops){
  //     displayedDriver = driver;
  //     $(this).addClass('selected');
  //     $(this).children('.active-driver-name').addClass('selected');
  //     renderDriverStopsList(driver);
  //     renderDriverStopsMap(driver);
  //   }
  // });
}

// clearStopsList(){
//   $('.driver-name-box').on("click", function(){

//   }
// }

function renderDriversNamesList(index, driver){
	var stops = driver.stops
	var container = driver.has_stops ? "#active-drivers" : "#inactive-drivers"
	var source = $("#driver_route").html(); 
	var template = Handlebars.compile(source);
	$(container).append(template(driver));
}

function renderDriverStopsList(driver) {
  $(".stops-box").html("")
  var source = $("#driver_stops").html(); 
	var template = Handlebars.compile(source);
	$.each(driver.stops, function(index, stop){
		$("#driver_" + stop.driver_id + "_stops_container").append(template(stop));
	});
}

function getStopStatusIcon(index, stop){
  switch(stop.job_status){
    case null:
      // to do
      var stop_image = {
        url: 'http://goo.gl/cJjBaI',
        size: new google.maps.Size(30, 30),
        origin: new google.maps.Point(30,0),
        anchor: new google.maps.Point(0, 45)
      };
      return stop_image;
      break;
    case "done_ok":
      // done
      var stop_image = {
        url: 'http://goo.gl/cJjBaI',
        size: new google.maps.Size(30, 30),
        origin: new google.maps.Point(60,0),
        anchor: new google.maps.Point(0, 60)
      }
      return stop_image;
      break;
    case "overdue":
      // overdue
      var stop_image = {
        url: 'http://goo.gl/cJjBaI',
        size: new google.maps.Size(90, 30),
        origin: new google.maps.Point(0,0),
        anchor: new google.maps.Point(0, 75)
      }
      return stop_image;
      break;
    default:
      var image = null 
      break;
    }
  return stop_image;
}

// * drivers locations  ********************************************

function renderDriverCurrLocMap(data){
  clearDriverMarkers();
  drivingDrivers = _.where(data.drivers, {is_driving: true});
  $.each(drivingDrivers, renderAllDriversCurrLocMap);
  // for fixed-seed data loop:
  driverLocIndex += 1;
}

function renderAllDriversCurrLocMap(index, driver){
	var image = {
    url: 'http://goo.gl/cJjBaI',
    size:   new google.maps.Size(30, 30),
    origin: new google.maps.Point(0,0),
    anchor: new google.maps.Point(0, 45),  
  };
  // var location = driver.locations.slice(-1)[index];
  var location = driver.locations[driverLocIndex];
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

// stops and routes locations ***************************************
function renderDriverStopsMap(driver){
	clearStopMarkers();
  $.each(driver.stops, renderStopsLocations);
	// for(var i = 0; i < driver.stops.length; i++){
	// 	if(i< driver.stops.length-1)
	// 	renderDirections(driver.stops[i].stop_address, driver.stops[i+1].stop_address)
	// }

}

function renderStopsLocations(index, stop){
  var stopLatLng = new google.maps.LatLng(stop.latitude, stop.longitude);
  var stopMarker = new google.maps.Marker({
      position: stopLatLng,
      map: map,
      title: stop.job_status + " " + stop.stop_contact_name + " " + stop.stop_address,
      icon: getStopStatusIcon(index, stop)
  });
  stopMarkers.push(stopMarker);
  stopInfoWindow(map, stopMarker);
  extendBoundaries();
}

function stopInfoWindow(map, stopMarker){
	var contentString = stopMarker.title;
  var infowindow = new google.maps.InfoWindow({
      content: contentString
  });
  google.maps.event.addListener(stopMarker, 'click', function() {
    infowindow.open(map, stopMarker);
  });
}


// function renderDirections(start, end){
//   var request = {
//     origin:start,
//     destination:end,
//     travelMode: google.maps.TravelMode.DRIVING
//   };
//   directionsService.route(request, function(result, status) {
//     directionsDisplay.setDirections(result);
//   });
// }

// // Sets the map on all markers in both arrays.
function setAllMap(map, markers) {
  for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
  };
}

function extendBoundaries(){
  $.each(markers,function(i, m){ 
  	bounds.extend(m.position) 
  })
  map.fitBounds(bounds);
}

// // Removes the markers from the map, but keeps them in the array.
function clearDriverMarkers() { 
	setAllMap(null, markers); 
}

function clearStopMarkers() { 
	setAllMap(null, stopMarkers); 
}

// // Shows any markers currently in the array.
function showMarkers() { 
	setAllMap(map); 
}

// // Deletes all markers in the array by removing references to them.
function deleteMarkers() { 
	clearMarkers(); markers = []; 
}

$(document).ready(main)