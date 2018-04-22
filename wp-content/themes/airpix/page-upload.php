<?php get_header();?>
<?php echo do_shortcode('[create_video_upload_form]');?>
<?php get_footer()?>
<div id="uploadSuccess" class="popup">
    <div class="overlay"></div>
    <div class="uploadContent">
        <h3>Upload Video</h3>
        <div class="social-sits">
            <div class="button-bottom">
                <p>Upload video is successfully</p>
            </div>
        </div>
        <a href="javascript:void(0)" class="close">X</a>
        <div class="clearfix"> </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        $('a.close').click(function(){
            $('#uploadSuccess').hide();
            $('.progress-bar').css('width','0');
            $('.status').text('0%');
            $('#image-preview').attr('src','');
        })
    })
</script>
