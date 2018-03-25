var $o = jQuery.noConflict();
$o(document).ready(function () {
    var Upload = function (file) {
        this.file = file;
    };

    Upload.prototype.getType = function() {
        return this.file.type;
    };
    Upload.prototype.getSize = function() {
        return this.file.size;
    };
    Upload.prototype.getName = function() {
        return this.file.name;
    };
    Upload.prototype.doUpload = function () {
        var that = this;
        var formData = new FormData();

        // add assoc key values, this will be posts values
        formData.append("upfile", this.file, this.getName());
        formData.append("thumbnail", document.getElementById('image-preview').src);
        formData.append("upload_file", true);

        $o.ajax({
            type: "POST",
            url: UploadUrl,
            xhr: function () {
                var myXhr = $o.ajaxSettings.xhr();
                if (myXhr.upload) {
                    myXhr.upload.addEventListener('progress', that.progressHandling, false);
                }
                return myXhr;
            },
            success: function (data) {
                // your callback here
                console.log("success", data);
                console.log($('#uploadSuccess'))
                $('#uploadSuccess').show()
//                location.reload();
            },
            error: function (error) {
                // handle error
                console.log("error", error);
            },
            async: true,
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            timeout: 60000
        });
    };

    Upload.prototype.progressHandling = function (event) {
        var percent = 0;
        var position = event.loaded || event.position;
        var total = event.total;
        var progress_bar_id = "#progress-wrp";
        if (event.lengthComputable) {
            percent = Math.ceil(position / total * 100);
        }
        // update progressbars classes so it fits your code
        $o(progress_bar_id + " .progress-bar").css("width", +percent + "%");
        $o(progress_bar_id + " .status").text(percent + "%");
    };

    $o("#uploadfiles").on("change", function (e) {
        var file = $o(this)[0].files[0];
        $o('#upload-filename').text(file.name);
        //Generates preview
        var canvas_elem = $o( '<canvas class="snapshot-generator"></canvas>' ).appendTo(document.body)[0];
        var $video = $o( '<video muted class="snapshot-generator"></video>' ).appendTo(document.body);
        var step_2_events_fired = 0;
        $video.one('loadedmetadata loadeddata suspend', function() {
          if (++step_2_events_fired == 3) {
            $video.one('seeked', function() {
              canvas_elem.height = this.videoHeight;
              canvas_elem.width = this.videoWidth;
              canvas_elem.getContext('2d').drawImage(this, 0, 0);
              var snapshot = canvas_elem.toDataURL();
              var preview = document.getElementById('image-preview');
              preview.src = snapshot;
              // Delete the elements as they are no longer needed
              $video.remove();
              jQuery(canvas_elem).remove();
            }).prop('currentTime', 4);
          }
        }).prop('src', URL.createObjectURL(file));

    });

    $o('#uploadfile_btn').click(function(){
        var file = $o("#uploadfiles")[0].files[0];
        if(file){
            var upload = new Upload(file);
            upload.doUpload();
        }
    });
});
