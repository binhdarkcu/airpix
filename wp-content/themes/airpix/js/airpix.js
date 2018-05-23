var map;
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644},
        zoom: 19
    });

    getLocation();

    //get location on click
    google.maps.event.addListener(map, 'click', function (event) {
        console.log("lat:", event.latLng.lat());
        console.log("lung:", event.latLng.lng());
    });
}

//get user location by geolocation API
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showCurrentPosition);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}
//show current pos of user with a marker
function showCurrentPosition(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    map.setCenter(new google.maps.LatLng(lat, lng));
    var marker = new google.maps.Marker({
        position: {lat: lat, lng: lng},
        draggable: true,
        map: map,
        title: 'Hello World!'
    });
}
jQuery(document).ready(function () {
    jQuery("#update-location").click(function () {
        jQuery.ajax({
            type: "post",
            dataType: "json",
            url: ajaxConfig.url,
            data: {
                'action': 'update_location',
                'data': 123
            },
            success: function (msg) {
                console.log(msg);
            }
        });
    });
});

