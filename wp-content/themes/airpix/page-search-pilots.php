<?php get_header() ?>

<!-- upload -->
<?php get_sidebar(); ?>
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
    <button id="update-location">
        Update location
    </button>
</body>
<?php get_footer() ?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyw5YGqIQvjH2OzzW_mJ1NeuA4IZ8KWD8&callback=initMap"
async defer></script>
