<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<section class="main-container">
  <div class="main-container-inner">
    <div id="content"><?php echo $content_top; ?>
      <div class="breadcrumbs">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
      </div>
      <article class="col-main">
      <div class="static-page">
      <div class="page-title"><h2><?php echo $heading_title; ?></h2></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <h2><?php echo $text_location; ?></h2>
        <div class="contact-info">
          <div class="content"><div class="left"><b><?php echo $text_address; ?></b><br />
            <?php echo $store; ?><br />
            <?php echo $address; ?></div>
          <div class="right">
            <?php if ($telephone) { ?>
            <b><?php echo $text_telephone; ?></b><br />
            <?php echo $telephone; ?><br />
            <br />
            <?php } ?>
            <?php if ($fax) { ?>
            <b><?php echo $text_fax; ?></b><br />
            <?php echo $fax; ?>
            <?php } ?>
          </div>
        </div>
        </div>
        <h2><?php echo $text_contact; ?></h2>
        <div class="content">
        <b><?php echo $entry_name; ?></b><br />
        <input type="text" name="name" value="<?php echo $name; ?>" class="input-text large-field" />
        <br />
        <?php if ($error_name) { ?>
        <span class="error"><?php echo $error_name; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_email; ?></b><br />
        <input type="text" name="email" value="<?php echo $email; ?>" class="input-text large-field" />
        <br />
        <?php if ($error_email) { ?>
        <span class="error"><?php echo $error_email; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_enquiry; ?></b><br />
        <textarea name="enquiry" cols="40" rows="10" style="width: 90%;"><?php echo $enquiry; ?></textarea>
        <br />
        <?php if ($error_enquiry) { ?>
        <span class="error"><?php echo $error_enquiry; ?></span>
        <?php } ?>
        <br /><br /><br /><br /><br /><br /><br /><br /><br />
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="<?php echo $captcha; ?>" class="input-text" />
        <br />
        <img src="index.php?route=information/contact/captcha" alt="" />
        <?php if ($error_captcha) { ?>
        <span class="error"><?php echo $error_captcha; ?></span>
        <?php } ?>
        </div>
        <div class="buttons">
          <div class=""><button type="submit" class="button continue"><?php echo $button_continue; ?></button></div>
        </div>
      </form>
      </div>
      </article>
      <?php echo $content_bottom; ?></div>
    </div>
</section>
<?php echo $footer; ?>