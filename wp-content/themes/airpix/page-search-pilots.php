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

    <div id="update-position-error-modal" class="white-popup-block mfp-hide">
        <h2>Update position failed</h1>
        <p>Something went wrong! You can not update your position at the moment, please make sure you have logged in to use this feature.</p>
        <p><a class="popup-modal-dismiss" href="#">Dismiss</a></p>
    </div>
    
    <a class="update-position-popup-modal" href="#update-position-error-modal"></a>
</body>
<?php get_footer() ?>
<script type="text/javascript">
<?php if ($user = wp_get_current_user()): ?>
        var lastPos = eval(<?php echo get_user_meta($user->ID, 'user_position', true); ?>);
<?php endif; ?>
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyw5YGqIQvjH2OzzW_mJ1NeuA4IZ8KWD8&callback=initMap"
async defer></script>
