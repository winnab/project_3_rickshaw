// from: http://blog.41studio.com/2013/09/25/google-maps-api/
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;

function initialize() {
  directionsDisplay = new google.maps.DirectionsRenderer();

  var start = new google.maps.LatLng(51.5236, -0.1022);
  var end = new google.maps.LatLng(51.5224161, -0.1000);
  
  var mapOptions = {
    zoom:7,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    center: start
  }
  
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  
  directionsDisplay.setMap(map);
  
  var request = {
    origin:start,
    destination:end,
    travelMode: google.maps.DirectionsTravelMode.DRIVING
  };

  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK){
      directionsDisplay.setDirections(response);
    }
  });

}
google.maps.event.addDomListener(window, 'load', initialize);