<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?>
<section class="main-container col2-right-layout">
  <div class="main-container-inner">
    <article class="col-main">   
    <div id="content"><?php echo $content_top; ?>
      <div class="breadcrumbs">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
      </div>
      <div class="dashboard">
      <div class="page-title"><h2><?php echo $heading_title; ?></h2></div>
      <p><?php echo $text_description; ?></p>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_to_name; ?></td>
            <td><input type="text" name="to_name" value="<?php echo $to_name; ?>" class="input-text large-field" />
              <?php if ($error_to_name) { ?>
              <span class="error"><?php echo $error_to_name; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_to_email; ?></td>
            <td><input type="text" name="to_email" value="<?php echo $to_email; ?>" class="input-text large-field" />
              <?php if ($error_to_email) { ?>
              <span class="error"><?php echo $error_to_email; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_from_name; ?></td>
            <td><input type="text" name="from_name" value="<?php echo $from_name; ?>" class="input-text large-field" />
              <?php if ($error_from_name) { ?>
              <span class="error"><?php echo $error_from_name; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_from_email; ?></td>
            <td><input type="text" name="from_email" value="<?php echo $from_email; ?>" class="input-text large-field" />
              <?php if ($error_from_email) { ?>
              <span class="error"><?php echo $error_from_email; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_theme; ?></td>
            <td><?php foreach ($voucher_themes as $voucher_theme) { ?>
              <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
              <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
              <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
              <?php } else { ?>
              <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" />
              <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
              <?php } ?>
              <br />
              <?php } ?>
              <?php if ($error_theme) { ?>
              <span class="error"><?php echo $error_theme; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_message; ?></td>
            <td><textarea name="message" cols="40" rows="5"><?php echo $message; ?></textarea></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_amount; ?></td>
            <td><input type="text" name="amount" value="<?php echo $amount; ?>" size="5" class="input-text large-field"/>
              <?php if ($error_amount) { ?>
              <span class="error"><?php echo $error_amount; ?></span>
              <?php } ?></td>
          </tr>
        </table>
        <div class="buttons">
          <div class=""><?php echo $text_agree; ?>
            <?php if ($agree) { ?>
            <input type="checkbox" name="agree" value="1" checked="checked" style="float:left;" />
            <?php } else { ?>
            <input type="checkbox" name="agree" value="1" style="float:left;" />
            <?php } ?><br/>
            <button type="submit" class="button continue" ><?php echo $button_continue; ?></button>
          </div>
        </div>
      </form>
      </div>
      <?php echo $content_bottom; ?></div>
    </article>
    <aside class="col-right sidebar">     
      <?php echo $column_right; ?>     
    </aside>
  </div>
</section>        
<?php echo $footer; ?>