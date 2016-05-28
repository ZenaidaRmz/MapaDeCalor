var map;
function initialize() {
  var mapOptions = {
    zoom: 13,
    center: new google.maps.LatLng(25.9167,-109.183),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map-ahome'),
      mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);
