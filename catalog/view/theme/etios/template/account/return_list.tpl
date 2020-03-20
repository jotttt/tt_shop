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
        <?php if ($returns) { ?>
        <?php foreach ($returns as $return) { ?>
        <div class="return-list">
          <div class="return-id"><b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?></div>
          <div class="return-status"><b><?php echo $text_status; ?></b> <?php echo $return['status']; ?></div>
          <div class="return-content">
            <div><b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
              <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?></div>
            <div><b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?></div>
            <div class="return-info"><a href="<?php echo $return['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></div>
          </div>
        </div>
        <?php } ?>
        <div class="pagination"><?php echo $pagination; ?></div>
        <?php } else { ?>
        <div class="content"><?php echo $text_empty; ?></div>
        <?php } ?>
        <div class="buttons">
          <div class=""><a href="<?php echo $continue; ?>"><button type="button"  class="button continue"><?php echo $button_continue; ?></button></a></div>
        </div>
        <?php echo $content_bottom; ?></div>
       </article>
    <aside class="col-right sidebar">     
    <?php echo $column_right; ?>     
    </aside>
  </div>
</div>
</section>               
<?php echo $footer; ?>