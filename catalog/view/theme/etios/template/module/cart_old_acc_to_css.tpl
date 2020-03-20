
<div class="basket dropdown-toggle" data-hover="dropdown" data-toggle="dropdown"> 
  <a href="<?php echo $cart; ?>"><span><?php echo $heading_title; ?> &nbsp;(<?php echo $text_items; ?>)</span></a>
</div>

<div>
<div class="top-cart-content arrow_box" style="display: none;">
 <?php if ($products || $vouchers) { ?>
 <div class="block-subtitle">Recently added item(s)</div>
 <ul class="mini-products-list" id="cart-sidebar">
<?php foreach ($products as $product) { ?>
<li class="item odd">
  <?php if ($product['thumb']) { ?>
  <a class="product-image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
  <?php } ?>
  <div class="product-details">
    <p class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
      <span>              
      <?php foreach ($product['option'] as $option) { ?>
      - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
      <?php } ?>
      <?php if ($product['recurring']): ?>
      - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
      <?php endif; ?></span>
    </p>
    <div class="price-box">
<strong><?php echo $product['quantity']; ?></strong>x
<span class="price"><?php echo $product['total']; ?></span>
    </div>
  </div>
</li>
<?php } ?>
 </ul>
<div class="top-subtotal">

       <?php foreach ($totals as $total) { ?>
         <?php echo $total['title']; ?>
          <span><?php echo $total['text']; ?></span>
      
        <?php } ?></div>
<div class="bottom-subtotal">
</div>
<div class="actions">

  <a href="<?php echo $cart; ?>"><button class="view-cart" type="button"><span><?php echo $text_cart; ?></span></button></a>
      <a href="<?php echo $checkout; ?>"><button class="btn-checkout" type="button"><span><?php echo $text_checkout; ?></span></button></a>

</div>

 <?php } else { ?>
 <?php echo $text_empty; ?>
 <?php } ?>
</div>
</div>
 
  