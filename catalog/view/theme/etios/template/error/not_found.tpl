<?php echo $header; ?><?php echo $column_left; ?><?php //echo $column_right; ?>
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
    <div class="content"><?php echo $text_error; ?></div>
    <div class="buttons">
      <div class=""><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
 
    <?php echo $content_bottom; ?></div>
     </article>  
     <aside class="col-right sidebar">     
    <?php echo $column_right; ?>     
    </aside>

</div>
</section>       
<?php echo $footer; ?>