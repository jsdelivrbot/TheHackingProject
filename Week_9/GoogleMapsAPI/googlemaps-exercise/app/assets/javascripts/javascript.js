$(document).ready(function() {
	function myMap() {
		var mapProp = {
			center: new google.maps.LatLng(48.891493, 2.345976),
			zoom:10,
		};
		var map = new google.maps.Map(document.getElementById("googlemap"), mapProp);
}
/*		var newPlace = new google.maps.LatLng(48.852775,2.369336)
		var marker = new google.maps.Marker({position:newPlace});
		marker.setMap(map);
		alert("hello!");*/

/*$('#submit').val("salut");*/

$('#submit').on('click', function() {
	alert('Form submitted');
});

});



/*	function getLatLong() {
		alert("hello");
		var latittud = getElementById('lat').value;
		var longitud = getElementById('long').value;
		var newPlace = new google.maps.LatLng(latitud,longitud)
		var marker = new google.maps.Marker({position:newPlace});
		marker.setMap(googlemap);
	}
	getLatLong();
);
*/