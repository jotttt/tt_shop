<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php //echo $column_right; ?>
<section class="main-container">
  <article class="main-container-inner">
    <div id="content"><?php echo $content_top; ?>
      <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
      </div>
      <div class="dashboard">
        <div class="page-title">
        <h1><?php echo $heading_title; ?></h1>
        </div>
        <?php echo $text_description; ?>
        <div class="login-content">
          <div class="left">
            <h2><?php echo $text_new_affiliate; ?></h2>
            <div class="content"><?php echo $text_register_account; ?> <a href="<?php echo $register; ?>"><button class="button continue"><?php echo $button_continue; ?></button></a></div>
          </div>
          <div class="right">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <h2><?php echo $text_returning_affiliate; ?></h2>
              <div class="content">
                <p><?php echo $text_i_am_returning_affiliate; ?></p>
                <b><?php echo $entry_email; ?></b><br />
                <input type="text" name="email" value="<?php echo $email; ?>"  class="input-text large-field" />
                <br />
                <br />
                <b><?php echo $entry_password; ?></b><br />
                <input type="password" name="password" value="<?php echo $password; ?>"  class="input-text large-field" />
                <br />   <br/>             
                <button type="submit" class="button login"><?php echo $button_login; ?></button>&nbsp;&nbsp;<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
                <?php if ($redirect) { ?>
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                <?php } ?>
              </div>
            </form>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
  </article>
</section>
<?php echo $footer; ?>