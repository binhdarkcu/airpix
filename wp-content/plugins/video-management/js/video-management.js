$(document).ready(function () {
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
        formData.append("title", $('#video-title').val());
        formData.append("description",$('#video-description').val());
        formData.append("thumbnail", document.getElementById('image-preview').src);
        formData.append("upload_file", true);
        
        $.ajax({
            type: "POST",
            url: UploadUrl,
            xhr: function () {
                var myXhr = $.ajaxSettings.xhr();
                if (myXhr.upload) {
                    myXhr.upload.addEventListener('progress', that.progressHandling, false);
                }
                return myXhr;
            },
            success: function (data) {
                console.log("returned data", data);
                setMessage(data);
            },
            error: function (error) {
                // handle error
                var data = {status: "ERROR", message: 'Something went wrong!'};
                setMessage(data);
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
        $(progress_bar_id + " .progress-bar").css("width", +percent + "%");
        $(progress_bar_id + " .status").text(percent + "%");
    };

    $("#uploadfiles").on("change", function (e) {
        var file = $(this)[0].files[0];
        if(!file){
            $('#upload-filename').text("");
            var preview = document.getElementById('image-preview');
            preview.src = "";
            return;
        }
        $('#video-title').val(file.name.replace(/\.[^.$]+$/, ''));
        $('#upload-filename').text(file.name);
        //Generates preview
        var canvas_elem = $( '<canvas class="snapshot-generator"></canvas>' ).appendTo(document.body)[0];
        var $video = $( '<video muted class="snapshot-generator"></video>' ).appendTo(document.body);
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

    $('#uploadfile_btn').click(function(){
        var file = $("#uploadfiles")[0].files[0];
        if(file){
            var upload = new Upload(file);
            upload.doUpload();
        }else{
            console.log("No file selected!");
        }
    });

    function setMessage(data){
        try {
            
            data = JSON.parse(data);
            
            if (!data || !data.status || !data.message) {
                data = {status: 'ERROR', message: 'Parameters error!'}
            }
            
            var redirectTo = '/';

            console.log('data', data);

            var custom_message = 'Please try again later!';
            if (data.status == 'ERROR') {
                redirectTo = '/upload';
            } else {
                custom_message = 'Please wait for admin approval to publish this video!';
                redirectTo = '/my-videos';
            }

            $('#system-message').avgrund({
                height: 200,
                holderClass: 'custom',
                showClose: true,
                showCloseText: 'Close',
                enableStackAnimation: true,
                onBlurContainer: '.container',
                onUnload: function (elem) {
                    location.href = redirectTo;
                },
                template: '<div>' + 
                            '<h3 class="popup-title">'+ data.status +'</h3> ' +
                            '<p class="popup-message">' + data.message + '</p>'+
                            '<p class="popup-message"> '+ custom_message +'</p>' +
                        '</div>'
            });
            $('#system-message').trigger('click');
        } catch (error) {
            alert('Something went wrong! Check console log!');
            console.log(error);
        }
    }
});
