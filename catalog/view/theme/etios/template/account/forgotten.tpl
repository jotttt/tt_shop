<?php echo $header; ?>
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
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <p><?php echo $text_email; ?></p>
        <h2><?php echo $text_your_email; ?></h2>
        <div class="content">
          <table class="form">
            <tr>
              <td><?php echo $entry_email; ?></td>
              <td><input type="text" name="email" value="" class="input-text large-field" /></td>
            </tr>
          </table>
        </div>
        <div class="buttons">
          <a href="<?php echo $back; ?>"><button type="button" class="button back"><?php echo $button_back; ?></button></a>&nbsp;&nbsp;
          <button type="submit" value="" class="button continue"><span><?php echo $button_continue; ?></span></button>
          <!-- <div class="left"> -->
        
        <!-- </div> -->
          <!-- <div class="right"> -->
            
          <!-- </div> -->
        </div>
      </form>
    </div>
    <?php echo $content_bottom; ?>
  </div>
  </article>
</section>  
<?php echo $footer; ?>