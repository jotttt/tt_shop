<?php echo $header; ?>
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
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <h2><?php echo $text_your_details; ?></h2>
        <div class="content">
          <table class="form">
            <tr>
              <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
              <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-text large-field"/>
                <?php if ($error_firstname) { ?>
                <span class="error"><?php echo $error_firstname; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
              <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-text large-field" />
                <?php if ($error_lastname) { ?>
                <span class="error"><?php echo $error_lastname; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_email; ?></td>
              <td><input type="text" name="email" value="<?php echo $email; ?>"  class="input-text large-field" />
                <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
              <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" class="input-text large-field" />
                <?php if ($error_telephone) { ?>
                <span class="error"><?php echo $error_telephone; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><?php echo $entry_fax; ?></td>
              <td><input type="text" name="fax" value="<?php echo $fax; ?>"  class="input-text large-field" /></td>
            </tr>
          </table>
        </div>
        <div class="buttons">
          <div class="left">
            <a href="<?php echo $back; ?>"><button type="button" class="button back"><?php echo $button_back; ?></button></a>&nbsp;        
            <button type="submit" class="button continue"><?php echo $button_continue; ?></button>
          </div>
        </div>
      </form>
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