var map;
//example locations
var lab6TMA = {lat: 10.85606544054808, lng: 106.63119583072796}
var pilotMarkers = [];
var pilots = [
    {lat: 10.855838898689916, lng: 106.63088737669125},
    {lat: 10.855294686885607, lng: 106.63118778410092},
    {lat: 10.85558129010037, lng: 106.62981878651135},
    {lat: 10.855404797916394, lng: 106.62985901964657},
    {lat: 10.856220085566322, lng: 106.63203965557568},
    {lat: 10.855301950621058, lng: 106.63112345845013},
    {lat: 10.854595980599653, lng: 106.62988964230328},
    {lat: 10.854050696642918, lng: 106.62893209368497},
    {lat: 10.856934066000505, lng: 106.62997831691939},
    {lat: 10.857287048457364, lng: 106.63182904113967},
    {lat: 10.856581083126574, lng: 106.63104047168929},
    {lat: 10.855290984991285, lng: 106.62810287249863},
    {lat: 10.852909646514199, lng: 106.62956199420273},
    {lat: 10.857511747837211, lng: 106.6311485200282}
];
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: -34.397, lng: 150.644},
        zoom: 19
    });

    getLocation();

    //get location on click
    google.maps.event.addListener(map, 'click', function (event) {
        console.log("lat:", event.latLng.lat());
        console.log("long:", event.latLng.lng());
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
    map.setCenter(new google.maps.LatLng(lab6TMA.lat, lab6TMA.lng));
    pilotMarkers.push(
            new google.maps.Marker({
                position: lab6TMA,
                draggable: true,
                map: map,
                title: 'You are here!'
            })
            );

    pilots.forEach(function (item, index) {
//        console.log("item: ", item);
        pilotMarkers.push(
                new google.maps.Marker({
                    position: item,
                    draggable: true,
                    map: map,
                    title: 'Pilot ' + index
                }));
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

