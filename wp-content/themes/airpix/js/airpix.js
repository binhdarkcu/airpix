var map;
var userPos = {lat: 10.85606544054808, lng: 106.63119583072796};
//example locations
var distance = 500; // meters
var maxPilots = 10;
var lab6TMA = {lat: 10.85606544054808, lng: 106.63119583072796}
var pilotMarkers = [];
var pilots = [
    {
        ID: 123,
        display_name: "Display name 1",
        position: {lat: 10.855838898689916, lng: 106.63088737669125},
        user_email: "plilot1@example.com",
        user_nicename: "Nice name 0"
    },
    {
        ID: 124,
        display_name: "Display name 2",
        position: {lat: 10.855294686885607, lng: 106.63118778410092},
        user_email: "plilot2@example.com",
        user_nicename: "Nice name 1"
    },
    {
        ID: 125,
        display_name: "Display name 3",
        position: {lat: 10.85558129010037, lng: 106.62981878651135},
        user_email: "plilot3@example.com",
        user_nicename: "Nice name 2"
    },
    {
        ID: 126,
        display_name: "Display name 4",
        position: {lat: 10.855301950621058, lng: 106.63112345845013},
        user_email: "plilot4@example.com",
        user_nicename: "Nice name 3"
    },
    {
        ID: 127,
        display_name: "Display name 5",
        position: {lat: 10.856220085566322, lng: 106.63203965557568},
        user_email: "plilot5@example.com",
        user_nicename: "Nice name 4"
    },
    {
        ID: 128,
        display_name: "Display name 6",
        position: {lat: 10.855404797916394, lng: 106.62985901964657},
        user_email: "plilot6@example.com",
        user_nicename: "Nice name 5"
    },
    {
        ID: 129,
        display_name: "Display name 7",
        position: {lat: 10.855290984991285, lng: 106.62810287249863},
        user_email: "plilot7@example.com",
        user_nicename: "Nice name 6"
    },
    {
        ID: 130,
        display_name: "Display name 8",
        position: {lat: 10.857511747837211, lng: 106.6311485200282},
        user_email: "plilot8@example.com",
        user_nicename: "Nice name 7"
    },
    {
        ID: 131,
        display_name: "Display name 9",
        position: {lat: 10.852909646514199, lng: 106.62956199420273},
        user_email: "plilot9@example.com",
        user_nicename: "Nice name 8"
    },
    {
        ID: 132,
        display_name: "Display name 10",
        position: {lat: 10.856581083126574, lng: 106.63104047168929},
        user_email: "plilot10@example.com",
        user_nicename: "Nice name 9"
    },
    {
        ID: 133,
        display_name: "Display name 11",
        position: {lat: 10.857287048457364, lng: 106.63182904113967},
        user_email: "plilot11@example.com",
        user_nicename: "Nice name 10"
    },
    {
        ID: 133,
        display_name: "Display name 12",
        position: {lat: 10.856934066000505, lng: 106.62997831691939},
        user_email: "plilot11@example.com",
        user_nicename: "Nice name 11"
    },
    {
        ID: 135,
        display_name: "Display name 13",
        position: {lat: 10.854050696642918, lng: 106.62893209368497},
        user_email: "plilot12@example.com",
        user_nicename: "Nice name 12"
    },
    {
        ID: 136,
        display_name: "Display name 14",
        position: {lat: 10.854595980599653, lng: 106.62988964230328},
        user_email: "plilot13@example.com",
        user_nicename: "Nice name 13"
    },
];


var rad = function (x) {
    return x * Math.PI / 180;
};

var getDistance = function (p1, p2) {
    var R = 6378137; // Earth’s mean radius in meter
    var dLat = rad(p2.lat - p1.lat);
    var dLong = rad(p2.lng - p1.lng);
    var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
            Math.cos(rad(p1.lat)) * Math.cos(rad(p2.lat)) *
            Math.sin(dLong / 2) * Math.sin(dLong / 2);
    var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
    var d = R * c;
    return d; // returns the distance in meter
};

//**
//*get user location by geolocation API
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showCurrentPosition, showError);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}
//**
//handle error on getting user's location
//*/
function showError(error) {
    switch (error.code) {
        case error.PERMISSION_DENIED:
            toastr.error('User denied the request for Geolocation.', 'System notification');
            break;
        case error.POSITION_UNAVAILABLE:
            toastr.error('Location information is unavailable.', 'System notification');
            break;
        case error.TIMEOUT:
            toastr.error('The request to get user location timed out.', 'System notification');
            break;
        case error.UNKNOWN_ERROR:
            toastr.error('An unknown error occurred.', 'System notification');
            break;
    }
}

//**
//Display current position on map
//*/
function displayCurrentPosOnMap(lat, lng) {
    var image = new google.maps.MarkerImage(
            "images/current-location.png",
            new google.maps.Size(71, 71),
            new google.maps.Point(0, 0),
            new google.maps.Point(17, 34),
            new google.maps.Size(30, 30));

    pilotMarkers.push(
            new google.maps.Marker({
                position: {lat, lng},
                map: map,
                icon: image,
                title: 'You are here!'
            })
            );
}

//**
//Show current position and nearby users
//*/
function showCurrentPosition(position) {

    if (pilotMarkers.length > 0) {
        pilotMarkers.map(function (marker) {
            marker.setMap(null);
        });
    }
    pilotMarkers = [];
    
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
//    userPos = {lat: lat, lng: lng};
//*************************************
    userPos = lab6TMA;
    lat = lab6TMA.lat;
    lng = lab6TMA.lng;
//**************************************

    map.setCenter(new google.maps.LatLng(lat, lng));
    map.setZoom(16);

    displayCurrentPosOnMap(lat, lng);
    if (globalConfig.pilots && globalConfig.pilots.length > 0) {
//        var _pilots = globalConfig.pilots;
//**********************************************************
        _pilots = pilots;
//**********************************************************
        var _distancedPilots = [];
        _pilots.forEach(function (pilot, index) {

            //get all users with distance
            var userDistance = pilot.position ? getDistance(userPos, pilot.position) : 999999999;

            if (userDistance <= distance) {
                //should add distance to item to compare
                pilot.distance = userDistance;
                console.log(userDistance);
                _distancedPilots.push(pilot);
            }

        });

        //order and get ${maxPilots} closest
        _distancedPilots.sort(function (a, b) {
            return parseFloat(a.distance) - parseFloat(b.distance);
        });

        var infowindow = new google.maps.InfoWindow();

        var max = maxPilots > _distancedPilots.length ? _distancedPilots.length : maxPilots;
        
        for (var i = 0; i < max; i++) {

            var marker = new google.maps.Marker({
                position: _distancedPilots[i].position,
                draggable: true,
                map: map,
                title: _distancedPilots[i].display_name
            });

            makeInfoWindowEvent(map, infowindow, _distancedPilots[i], marker);

            pilotMarkers.push(marker);
        }

    }
}

function makeInfoWindowEvent(map, infowindow, pilot, marker) {
    var html = '<div class="pilot-name"> <b>Pilot name:</b> <span>{pilot_name}</span> </div> <div class="pilot-email"> <b>Pilot email:</b> <span>{pilot_email}</span> </div> <div class="drone-info"> <b>Drone Info:</b> <span>{user_drone_info}</span> </div> <div class="services-selection"> <b>Services:</b> <select id="service_duration"> <option value="15">15 minutes</option> <option value="30">30 minutes</option> <option value="60">1 hour</option> <option value="120">2 hours</option> <option value="180">3 hours</option> <option value="1440">All day</option> </select> </div> </div>';
    html = html.replace("{pilot_name}", pilot.display_name)
            .replace("{pilot_email}", pilot.user_email)
            .replace("{user_drone_info}", pilot.user_drone_info);
    var container = document.createElement('div');
    container.id = "connect-to-pilot";

    var connectBtn = document.createElement('button');
    connectBtn.id = "start_connecting";
    $(connectBtn).text("Connect!");
    connectBtn.onclick = function () {
        handleConnectButton(infowindow)
    };

    var userAction = document.createElement('div');
    userAction.class = "user-action";
    $(userAction).append(connectBtn);

    $(container).append([html, userAction]);

    google.maps.event.addListener(marker, 'click', function () {
        infowindow.setContent(container);
        infowindow.open(map, marker);
    });
}

function handleConnectButton(infowindow) {
    console.log(infowindow);
     toastr.success('Successfully connected!', 'System notification');
    //close the window
    infowindow.close();
}
//**
//Create current position button
//*/
function CurrentPositionButton(controlDiv) {

    // Set CSS for the control border.
    var controlUI = document.createElement('div');
    controlUI.style.backgroundColor = '#fff';
    controlUI.style.border = '2px solid #fff';
    controlUI.style.borderRadius = '3px';
    controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
    controlUI.style.cursor = 'pointer';
    controlUI.style.marginBottom = '22px';
    controlUI.style.textAlign = 'center';
    controlUI.title = 'Click to go to current position';
    controlDiv.appendChild(controlUI);

    // Set CSS for the control interior.
    var controlText = document.createElement('div');
    controlText.style.color = 'rgb(25,25,25)';
    controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
    controlText.style.fontSize = '11px';
    controlText.style.lineHeight = '28px';
    controlText.style.paddingLeft = '5px';
    controlText.style.paddingRight = '5px';
    controlText.innerHTML = 'Current position';
    controlUI.appendChild(controlText);

    controlUI.addEventListener('click', function () {
        getLocation();
    });
}

//*
//Create current position button
//**/
function UpdatePositionButton(controlDiv) {

    // Set CSS for the control border.
    var controlUI = document.createElement('div');
    controlUI.style.backgroundColor = '#fff';
    controlUI.style.border = '2px solid #fff';
    controlUI.style.borderRadius = '3px';
    controlUI.style.boxShadow = '0 2px 6px rgba(0,0,0,.3)';
    controlUI.style.cursor = 'pointer';
    controlUI.style.marginBottom = '22px';
    controlUI.style.textAlign = 'center';
    controlUI.title = 'Use this place as my position';
    controlDiv.appendChild(controlUI);

    // Set CSS for the control interior.
    var controlText = document.createElement('div');
    controlText.style.color = 'rgb(25,25,25)';
    controlText.style.fontFamily = 'Roboto,Arial,sans-serif';
    controlText.style.fontSize = '11px';
    controlText.style.lineHeight = '28px';
    controlText.style.paddingLeft = '5px';
    controlText.style.paddingRight = '5px';
    controlText.innerHTML = 'Update position';
    controlUI.appendChild(controlText);

    controlUI.addEventListener('click', function () {
        $.ajax({
            type: "post",
            dataType: "json",
            url: globalConfig.admin_ajax_url,
            data: {
                'action': 'update_location',
                'lat': userPos.lat,
                'lng': userPos.lng
            },
            success: function (msg) {
                toastr.success('Position updated successfully!', 'System notification');
            },
            error: function (xhr, ajaxOptions, thrownError) {
                $('.update-position-popup-modal').click();
            }
        });
    });
}

//*
//
//**/
//function initAutocomplete() {
//    var map = new google.maps.Map(document.getElementById('map'), {
//        center: {lat: -33.8688, lng: 151.2195},
//        zoom: 13,
//        mapTypeId: 'roadmap'
//    });
//
//    // Create the search box and link it to the UI element.
//    var input = document.getElementById('pac-input');
//    var searchBox = new google.maps.places.SearchBox(input);
//    map.controls[google.maps.ControlPosition.TOP_CENTER].push(input);
//
//    // Bias the SearchBox results towards current map's viewport.
//    map.addListener('bounds_changed', function () {
//        searchBox.setBounds(map.getBounds());
//    });
//
//    var markers = [];
//    // Listen for the event fired when the user selects a prediction and retrieve
//    // more details for that place.
//    searchBox.addListener('places_changed', function () {
//        var places = searchBox.getPlaces();
//
//        if (places.length == 0) {
//            return;
//        }
//
//        // Clear out the old markers.
//        markers.forEach(function (marker) {
//            marker.setMap(null);
//        });
//        markers = [];
//
//        // For each place, get the icon, name and location.
//        var bounds = new google.maps.LatLngBounds();
//        places.forEach(function (place) {
//            if (!place.geometry) {
//                console.log("Returned place contains no geometry");
//                return;
//            }
//            var icon = {
//                url: place.icon,
//                size: new google.maps.Size(71, 71),
//                origin: new google.maps.Point(0, 0),
//                anchor: new google.maps.Point(17, 34),
//                scaledSize: new google.maps.Size(25, 25)
//            };
//
//            // Create a marker for each place.
//            markers.push(new google.maps.Marker({
//                map: map,
//                icon: icon,
//                title: place.name,
//                position: place.geometry.location
//            }));
//
//            if (place.geometry.viewport) {
//                // Only geocodes have viewport.
//                bounds.union(place.geometry.viewport);
//            } else {
//                bounds.extend(place.geometry.location);
//            }
//        });
//        map.fitBounds(bounds);
//    });
//}

//*
//Init Google maps
//**/
function initMap() {
    //setup toast position
    toastr.options.positionClass = "toast-bottom-right";

    map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 10.818468635310658, lng: 106.65879249572754},
        zoom: 8
    });

    //creates control buttons
    var updatePosBtn = document.createElement('div');
    var currentPosBtn = document.createElement('div');
    new CurrentPositionButton(currentPosBtn);
    new UpdatePositionButton(updatePosBtn);

    currentPosBtn.index = 1;
    updatePosBtn.index = 2;
    map.controls[google.maps.ControlPosition.TOP_RIGHT].push(currentPosBtn);
    map.controls[google.maps.ControlPosition.TOP_RIGHT].push(updatePosBtn);

    //start from last saved location
    if (lastPos) {
        var pos = {lat: parseFloat(lastPos.lat), lng: parseFloat(lastPos.lng)}
        displayCurrentPosOnMap(pos.lat, pos.lng);
        map.setCenter(pos);
        map.setZoom(16);
    }
    //get location on click
    google.maps.event.addListener(map, 'click', function (event) {
        console.log("lat:", event.latLng.lat());
        console.log("long:", event.latLng.lng());
    });
}

//*
//Show error on updating user position
//*/
$(document).ready(function () {
    $('.update-position-popup-modal').magnificPopup({
        type: 'inline',
        preloader: false,
        focus: '#username',
        modal: true
    });
    $(document).on('click', '.popup-modal-dismiss', function (e) {
        e.preventDefault();
        $.magnificPopup.close();
    });
    $('#pac-input').on('change', function (e) {
        var input = e.target.value;

        if (isNormalInteger(input) && input > 0) {
            distance = input;
            getLocation();
            console.log("update google maps");

        } else {
            toastr.error('Enter number only in meters', 'Input error');
        }
    });
})

//check string is integer
function isNormalInteger(str) {
    var n = Math.floor(Number(str));
    return n !== Infinity && String(n) === str && n >= 0;
}