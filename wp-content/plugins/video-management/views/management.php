<form name="uploadfile" id="uploadfile_form" method="POST" enctype="multipart/form-data" action="<?php echo plugins_url().'/video-management/includes/uploader.php' ?>" accept-charset="utf-8" >
    <input type="file" name="uploadfiles[]" id="uploadfiles" size="35" class="uploadfiles" />
<!--    <input class="button-primary" type="submit" name="uploadfile" id="uploadfile_btn" value="Upload"  />-->
</form>
<div id="progress-wrp">
    <div class="progress-bar"></div>
    <div class="status">0%</div>
</div>
<div id="video-list">
    <table id="video-collection">
        <thead>
            <th class="video-id">ID</th>
            <th class="video-name"><?php echo _('Name')?></th>
            <th class="video-thumbnail"><?php echo _('Thumbnail');?></th>
            <th class="video-format"><?php echo _('Video Format');?></th>
            <th class="video-created-date"><?php echo _('Created date'); ?></th>
            <th class="video-updated-date"><?php echo _('Updated date');?></th>
        </thead>
        <tbody>
        <?php
        global $wpdb;

        $query = "SELECT * FROM " . $wpdb->prefix . "videos  ORDER BY created_date desc";
        $rows = $wpdb->get_results ( $query, 'ARRAY_A' );
        ?>

        <?php foreach ($rows as $row) : ?>
            <tr>
                <td class="video-id"><?php echo $row['id'] ;?></td>
                <td class="video-name"><?php echo $row['display_name'] ;?></td>
                <td class="video-thumbnail"><?php echo $row['thumbnail'] ;?></td>
                <td class="video-format"><?php echo $row['video_format'] ;?></td>
                <td class="video-created-date"><?php echo $row['created_date'] ;?></td>
                <td class="video-updated-date"><?php echo $row['updated_date'] ;?></td>
            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>