<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
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
      <?php if ($products) { ?>
      <div class="wishlist-info">
        <table id="wishlist-table" class="data-table">
          <thead>
            <tr>
              <td class="image"><?php echo $column_image; ?></td>
              <td class="name"><?php echo $column_name; ?></td>
              <td class="model"><?php echo $column_model; ?></td>
              <td class="stock"><?php echo $column_stock; ?></td>
              <td class="price"><?php echo $column_price; ?></td>
              <td class="action"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <?php foreach ($products as $product) { ?>
          <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
            <tr>
              <td class="image"><?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                <?php } ?></td>
              <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
              <td class="model"><?php echo $product['model']; ?></td>
              <td class="stock"><?php echo $product['stock']; ?></td>
              <td class="price"><?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                  <?php } ?>
                </div>
                <?php } ?></td>
              <td class="action"><!-- <img src="catalog/view/theme/etios/image/cart-add.png" alt="<?php //echo $button_cart; ?>" title="<?php //echo $button_cart; ?>" onclick="addToCart('<?php //echo $product['product_id']; ?>');" /> -->
                <button class="button btn-cart"  onclick="addToCart('<?php echo $product['product_id']; ?>');" title="Add to Cart" type="button">
                <span>Add to Cart</span>
                </button>
                &nbsp;&nbsp;

                <a href="<?php echo $product['remove']; ?>" class="remove-item"><span>Remove item</span></a>


              </td>
            </tr>
          </tbody>
          <?php } ?>
        </table>
      </div>
      <div class="buttons">
        <div><a href="<?php echo $continue; ?>"><button type="button"  class="button continue"><?php echo $button_continue; ?></button></a></div>
      </div>
      <?php } else { ?>
      <div class="content"><?php echo $text_empty; ?></div>
      <div class="buttons">
        <div><a href="<?php echo $continue; ?>"><button type="button"  class="button continue"><?php echo $button_continue; ?></button></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    </article>
    <aside class="col-right sidebar">     
    <?php echo $column_right; ?>     
    </aside>
  </div>
</div>
</section> 
<?php echo $footer; ?>