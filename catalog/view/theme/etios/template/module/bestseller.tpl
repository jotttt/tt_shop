<section class="main-col">
<div class="std">
<div id="best_products">
<div class="new_title center">
<h2><?php echo $heading_title; ?></h2>
</div>

<ul>
<?php $i=1; ?>
<?php foreach ($products as $product) { ?>
<li class="<?php if($i%2==0) echo 'BestSellerTwo'; else echo 'BestSellerOne';?>">
<a href="<?php echo $product['href']; ?>">
<?php if ($product['thumb']) { ?>
<div class="best_img"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
 <?php if($this->config->get('magiketios_label_show')==1){ 
                   if ($product['price'] && $product['special']) { ?>
                    <div class="new-label new-top-left"><?php echo $this->config->get('magiketios_label_title'); ?> </div>        
                <?php }
                  } ?>
</div>
<?php } ?>
<div class="best_info">
<h3><?php echo $product['name']; ?></h3>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?> 
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>

<span class="dotted"></span><p><?php echo substr($product['description'], 0, 200);?></p>
        <?php /*if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } */?>     

</div> 
</a>
</li>
<?php $i++; } ?>
</ul>
</div>
</div>
</section>  
 <!-- <div class="cart"><input type="button" value="<?php //echo $button_cart; ?>" onclick="addToCart('<?php //echo $product['product_id']; ?>');" class="button" /></div> -->

