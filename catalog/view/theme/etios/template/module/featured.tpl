<section class="featured-cat-box">
<div class="new_title center"><h2><span><?php echo $heading_title; ?></h2></span></div>

<ul class="featured-cat products-grid">
<?php $i=1;?>
<?php foreach ($products as $product) { ?>
<li class="item <?php if($i==count($products)) echo 'last';?>">
<div class="item-inner">
<div class="item-img">
  <div class="item-img-info">
 <?php if ($product['thumb']) { ?>
        <a class="product-image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        <?php } ?>
        <?php if($this->config->get('magiketios_label_show')==1){ 
                   if ($product['price'] && $product['special']) { ?>
                    <div class="new-label new-top-left"><?php echo $this->config->get('magiketios_label_title'); ?> </div>        
                <?php }
                  } ?>

                    <?php $this->language->load('module/magiketios');
                      if($this->config->get('magiketios_layout_quickview') == 1) { ?>
                  <div class="item-box-hover">
                    <div class="box-inner">
                      <div class="product-quick-view">
                        
                       <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&product_id=<?php echo $product['product_id']; ?>');" title="Quick View" class="button quick-view detail-bnt"><span><?php echo 'Quick View'; ?></span></a>     
                      </div>
                    </div>
                  </div>
                  <?php } ?>
      </div></div>
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
        <div class="rating"><img src="catalog/view/theme/etios/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
<!--         <div class="cart"><input type="button" value="<?php //echo $button_cart; ?>" onclick="addToCart('<?php //echo $product['product_id']; ?>');" class="button" /></div>
 -->        
 <a class="shopnow-btn" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="View all"><?php echo $button_cart; ?></a>

</div>
</div><!--item-inner-->
</li>
<?php $i++; } ?>
</ul>
</section>











 
