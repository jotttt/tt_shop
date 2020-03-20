<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?><?php echo $column_left; ?>
<section class="main-container col2-right-layout">
  <div class="main-container-inner">
  <div class="checkout-page">   
  <article class="col-main">   
    <div class="dashboard">
      <div id="content"><?php echo $content_top; ?>
        <div class="breadcrumbs">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
          <?php } ?>
        </div>
        <div class="page-title"><h2><?php echo $heading_title; ?></h2></div>
        <h2><?php echo $text_address_book; ?></h2>
        <?php foreach ($addresses as $result) { ?>
        <div class="content">
          <table style="width: 100%;">
            <tr>
              <td><?php echo $result['address']; ?></td>
              <td><a href="<?php echo $result['update']; ?>"><button type="button" class="button common"><?php echo $button_edit; ?></button></a> &nbsp; <a href="<?php echo $result['delete']; ?>"><button type="button" class="button common"><?php echo $button_delete; ?></button></a></td>
            </tr>
          </table>
        </div>
        <?php } ?>
        <div class="buttons">
          <div class="left"><a href="<?php echo $back; ?>"><button type="button" class="button back"><?php echo $button_back; ?></button></a>
          <a href="<?php echo $insert; ?>"><button type="button" class="button new-address"><?php echo $button_new_address; ?></button></a></div>
        </div>
        <?php echo $content_bottom; ?></div>
      </div>
    </article>
    <aside class="col-right sidebar">     
    <?php echo $column_right; ?>     
    </aside>
  </div>
</div>
</section>
<?php echo $footer; ?>