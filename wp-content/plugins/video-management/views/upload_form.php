<script type="text/javascript">
    const UploadUrl = "<?php echo plugins_url().'/video-management/includes/uploader.php';?>";
</script>
<div class="upload">

<!---728x90--->

     <!--container--> 
    <div class="container">
        <div class="upload-grids">
            <div class="upload-right">
                <div class="upload-file">
                    <div class="services-icon">
                        <span class="glyphicon glyphicon-open" aria-hidden="true"></span>
                    </div>
                    <input type="file" id="uploadfiles" value="Choose file..">
                </div>
                <div class="upload-info">
                    <h5 id="upload-filename">Select files to upload</h5>
<!--                    <span>or</span>
                    <p>Drag and drop files</p>-->
                </div>
                <div id="progress-wrp">
                    <div class="progress-bar"></div>
                    <div class="status">0%</div>
                </div>
                <input id="uploadfile_btn" class="button-primary" type="button" value="Upload"/>
                <div id="video-preview">
                    <image id="image-preview" src=""/>
                </div>
            </div>

<!---728x90--->


        </div>
    </div>
     <!--//container--> 
</div>