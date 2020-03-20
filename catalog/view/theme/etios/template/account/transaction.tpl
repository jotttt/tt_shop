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
        <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
        <table class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $column_date_added; ?></td>
              <td class="left"><?php echo $column_description; ?></td>
              <td class="right"><?php echo $column_amount; ?></td>
            </tr>
          </thead>
          <tbody>
            <?php if ($transactions) { ?>
            <?php foreach ($transactions  as $transaction) { ?>
            <tr>
              <td class="left"><?php echo $transaction['date_added']; ?></td>
              <td class="left"><?php echo $transaction['description']; ?></td>
              <td class="right"><?php echo $transaction['amount']; ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="5"><?php echo $text_empty; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
        <div class="pagination"><?php echo $pagination; ?></div>
        <div class="buttons">
          <div class=""><a href="<?php echo $continue; ?>"><button type="button" class="button continue"><?php echo $button_continue; ?></button></a></div>
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