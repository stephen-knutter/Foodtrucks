function mapLoad(){
	var newCenter = new google.maps.LatLng(39.7392, -104.9847);
	var newZoom = 11;
	var mapType = 'region';


	var map = new google.maps.Map(document.getElementById("gmap"), {
		center: newCenter,
		zoom: newZoom,

		zoomControlOptions: {
			style: google.maps.ZoomControlStyle.LARGE,
			position: google.maps.ControlPosition.BOTTOM_LEFT
		},
		scrollwheel: false,
		scaleControl: false,
		streetViewControl: true,
		panControl: false,
		mapTypeControl: false,
		mapTypeId: 'roadmap'
	});
}

google.maps.event.addDomListener(window, "load", mapLoad);
