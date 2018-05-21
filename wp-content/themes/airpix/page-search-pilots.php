<?php get_header()?>

<!-- upload -->
<?php get_sidebar();?>
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
      <div id="map-container" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
          <div id="map"></div>
      </div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 19
        });

        getLocation();
      }
      function getLocation() {
        if (navigator.geolocation) {
         navigator.geolocation.getCurrentPosition(showPosition);
         } else {
        alert("Geolocation is not supported by this browser.");
        }
       }
    function showPosition(position) {
      var lat = position.coords.latitude;
      var lng = position.coords.longitude;
      map.setCenter(new google.maps.LatLng(lat, lng));
        var marker = new google.maps.Marker({
          position: {lat: lat, lng: lng},
          map: map,
          title: 'Hello World!'
        });
    }
    </script>
<?php get_footer()?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyw5YGqIQvjH2OzzW_mJ1NeuA4IZ8KWD8&callback=initMap"
    async defer></script>
