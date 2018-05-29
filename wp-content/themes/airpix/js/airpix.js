var map;
var userPos = {lat: 10.85606544054808, lng: 106.63119583072796};
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
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    userPos = {lat: lat, lng: lng};
    map.setCenter(new google.maps.LatLng(lat, lng));
    map.setZoom(16);

    displayCurrentPosOnMap(lat, lng);

    pilots.forEach(function (item, index) {
        pilotMarkers.push(
                new google.maps.Marker({
                    position: item,
                    draggable: true,
                    map: map,
                    title: 'Pilot ' + index
                })
                );
    });
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
    map.controls[google.maps.ControlPosition.TOP_CENTER].push(currentPosBtn);
    map.controls[google.maps.ControlPosition.TOP_CENTER].push(updatePosBtn);

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
})