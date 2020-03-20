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
      <?php if ($profiles) { ?>

        <table class="list">
            <thead>
            <tr>
                <td class="left"><?php echo $column_profile_id; ?></td>
                <td class="left"><?php echo $column_created; ?></td>
                <td class="left"><?php echo $column_status; ?></td>
                <td class="left"><?php echo $column_product; ?></td>
                <td class="right"><?php echo $column_action; ?></td>
            </tr>
            </thead>
            <tbody>
            <?php if ($profiles) { ?>
            <?php foreach ($profiles as $profile) { ?>
            <tr>
                <td class="left">#<?php echo $profile['id']; ?></td>
                <td class="left"><?php echo $profile['created']; ?></td>
                <td class="left"><?php echo $status_types[$profile['status']]; ?></td>
                <td class="left"><?php echo $profile['name']; ?></td>
                <td class="right"><a href="<?php echo $profile['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></td>
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
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <?php } ?>
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