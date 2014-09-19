function initialize() {
    var mapOptions = {
		center: { lat: 51.605, lng: -0.0358},
    	zoom: 8
    };
    
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
}

google.maps.event.addDomListener(window, 'load', initialize);