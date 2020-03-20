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
          <div class="content">
            <table class="form">
              <tr>
                <td><?php echo $entry_newsletter; ?></td>
                <td><?php if ($newsletter) { ?>
                  <input type="radio" name="newsletter" value="1" checked="checked" />
                  <?php echo $text_yes; ?>&nbsp;
                  <input type="radio" name="newsletter" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="newsletter" value="1" />
                  <?php echo $text_yes; ?>&nbsp;
                  <input type="radio" name="newsletter" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?></td>
              </tr>
            </table>
          </div>
          <div class="buttons">
            <div class="left"><a href="<?php echo $back; ?>"><button type="button" class="button back"><?php echo $button_back; ?></button></a>&nbsp;&nbsp;<button type="submit" class="button continue"><?php echo $button_continue; ?></button></div>
          </div>
        </form>
        <?php echo $content_bottom; ?></div>
      </article>
    <aside class="col-right sidebar">     
    <?php echo $column_right; ?>     
    </aside>
  </div>
</div>
</section>            
<?php echo $footer; ?>