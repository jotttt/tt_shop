<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?><?php echo $column_left; ?>
<section class="main-container">
  <article class="main-container-inner">
  <div id="content"><?php echo $content_top; ?>
    <div class="breadcrumbs">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?>
    </div>
    <div class="login_page">
      <div class="page-title">
        <h2><?php echo $heading_title; ?></h2>
      </div>
    
      <div class="login-content">
        <fieldset class="col2-set"> 

         <div class="col-1 new-users"><strong><?php echo $text_new_customer; ?></strong>
          <div class="content">
            <p><?php echo $text_register; ?><br><?php echo $text_register_account; ?></p>
            <div class="buttons-set">
              <button type="button" class="button create-account" onClick="window.location='<?php echo $register; ?>';"><span><?php echo $button_continue; ?></span></button>
            </div>
          </div>
        </div>   
       
          <div class="col-2 registered-users"><strong><?php echo $text_returning_customer; ?></strong>
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            <div class="content">
              <p><?php echo $text_i_am_returning_customer; ?></p>
              <ul class="form-list">
                <li>
                <label for="email"><?php echo $entry_email; ?><span class="required">*</span></label>
                <br>
                <input type="text" name="email" value="" id="email" class="input-text required-entry" title="Email Address" value="<?php echo $email; ?>">
                </li>
                 <li>
                <label for="pass"><?php echo $entry_password; ?><span class="required">*</span></label>
                <br>
                <input type="password" name="password" value="<?php echo $password; ?>" id="password" class="input-text required-entry" title="Email Address" value="<?php echo $email; ?>">
                </li>
              </ul>   
              <div class="buttons-set">
                <button class="button login" type="submit" name="send" id="send2"><span><?php echo $button_login; ?></span></button>
                <a href="<?php echo $forgotten; ?>" class="forgot-word"><?php echo $text_forgotten; ?></a> </div>      
              <!-- <input type="submit" value="<?php echo $button_login; ?>" class="button login" /> -->
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </div>
          </form>
        </div>
      </fieldset>
      </div>
      <?php echo $content_bottom; ?></div>
    </div>
  </article>
</section>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>