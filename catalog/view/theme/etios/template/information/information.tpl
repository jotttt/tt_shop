<?php echo $header; ?><?php echo $column_left; ?>
<section class="main-container col2-right-layout">
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
        <?php echo $description; ?>
        <div class="buttons">
          <div><a href="<?php echo $continue; ?>"><button class="button continue"><?php echo $button_continue; ?></button></a></div>
        </div>
      </div>
      </article>
      <aside class="col-right sidebar">
        <?php echo $column_right; ?>
      </aside>
      <?php echo $content_bottom; ?></div>     
  </div>
</section>
<?php echo $footer; ?>