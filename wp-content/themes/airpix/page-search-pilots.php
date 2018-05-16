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
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
<?php get_footer()?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyw5YGqIQvjH2OzzW_mJ1NeuA4IZ8KWD8f&callback=initMap"
    async defer></script>
