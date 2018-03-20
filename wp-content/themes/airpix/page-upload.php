<?php get_header()?>
<!--<div class="upload">

-728x90-

     container 
    <div class="container">
        <div class="upload-grids">
            <div class="upload-right">
                <div class="upload-file">
                    <div class="services-icon">
                        <span class="glyphicon glyphicon-open" aria-hidden="true"></span>
                    </div>
                    <input type="file" value="Choose file..">
                </div>
                <div class="upload-info">
                    <h5>Select files to upload</h5>
                    <span>or</span>
                    <p>Drag and drop files</p>
                </div>
            </div>

-728x90-


        </div>
    </div>
     //container 
</div>-->
<!-- //upload -->
<div id="upload-media">
    <?php echo do_shortcode('[fu-upload-form class="html-wrapper-class" form_layout="media" title="Upload your media"] [input type="text" name="post_title" id="title" class="required" description="Title"] [textarea name="post_content" class="textarea" id="my-textarea" description="Description (optional)"] [input type="file" name="photo" id="my-photo-submission" class="required" description="Your Photo" multiple="multiple"] [input type="submit" class="btn" value="Submit"] [/fu-upload-form]')?>
</div>
<?php get_footer()?>
