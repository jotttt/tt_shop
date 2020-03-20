<?php echo $header; ?><?php echo $column_left; ?>
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
        <h2><?php echo $text_password; ?></h2>
        <div class="content">
          <table class="form">
            <tr>
              <td><span class="required">*</span> <?php echo $entry_password; ?></td>
              <td><input type="password" name="password" value="<?php echo $password; ?>" class="input-text large-field" />
                <?php if ($error_password) { ?>
                <span class="error"><?php echo $error_password; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
              <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" class="input-text large-field" />
                <?php if ($error_confirm) { ?>
                <span class="error"><?php echo $error_confirm; ?></span>
                <?php } ?></td>
            </tr>
          </table>
        </div>
        <div class="buttons">
          <div class="left">
            <a href="<?php echo $back; ?>"><button  type="button" class="button back"><?php echo $button_back; ?></button></a>
          <button type="submit" class="button continue"><?php echo $button_continue; ?></button></div>
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