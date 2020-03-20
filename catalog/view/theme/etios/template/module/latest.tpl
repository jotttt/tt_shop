<section class="featured-cat-box">
<div class="new_title center"><h2><span><?php echo $heading_title; ?></h2></span></div>

<ul class="featured-cat">
<?php $i=1;?>
<?php foreach ($products as $product) { ?>
<li class="<?php if($i==count($products)) echo 'last';?>">
<div class="featured-box">
<div class="img-box">
 <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <?php if($this->config->get('magiketios_label_show')==1){ 
                   if ($product['price'] && $product['special']) { ?>
                    <div class="new-label new-top-left"><?php echo $this->config->get('magiketios_label_title'); ?> </div>        
                <?php }
                  } ?>
      </div>
<div class="block-content">
<a href="<?php echo $product['href']; ?>"><h3><?php echo $product['name']; ?></h3></a>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>

                <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
<!--         <div class="cart"><input type="button" value="<?php //echo $button_cart; ?>" onclick="addToCart('<?php //echo $product['product_id']; ?>');" class="button" /></div>
 -->        
 <a class="shopnow-btn" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="View all"><?php echo $button_cart; ?></a>

</div>
</div>
</li>
<?php $i++; } ?>
</ul>
</section>











 

<?php /* ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<?php */?>