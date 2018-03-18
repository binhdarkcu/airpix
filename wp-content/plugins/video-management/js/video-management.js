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
        formData.append("upload_file", true);

        $o.ajax({
            type: "POST",
            url: $o("#uploadfile_form").attr("action"),
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
//Change id to your id
    $o("#uploadfiles").on("change", function (e) {
        var file = $o(this)[0].files[0];
        var upload = new Upload(file);

        // maby check size or type here with upload.getSize() and upload.getType()

        // execute upload
        upload.doUpload();
    });
});