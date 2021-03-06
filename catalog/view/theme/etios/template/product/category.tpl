<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<section class="main-container col1-layout">
  <div class="main-container-inner">
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumbs">
    <div class="inner">
    <ul>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </li>
  </ul>
  </div>
  </div>
<article class="col-main">
  <div class="page-title"><h2><?php echo $heading_title; ?></h2>
  <span>
    <?php if ($description) { ?> 
     <?php echo $description; ?>
    <?php } ?></span>
  </div>

  <div class="category-image">
  <?php if ($thumb) { ?>
  <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" />
  <?php } ?>
  </div><!--category-image-->
  

  <?php if ($categories) { ?>
  <h2><?php echo $text_refine; ?></h2>
  <div class="category-list">
    <?php if (count($categories) <= 5) { ?>
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($categories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($categories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($categories[$i])) { ?>
      <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div class="toolbar">
    <div class="sorter">
      <div class="view-mode"> 
        <a onclick="display('grid');" title="<?php echo $text_grid; ?>" class="button-active button-grid first">&nbsp;</a>
        <a onclick="display('list');" title="<?php echo $text_list; ?>" class="button-list last">&nbsp;</a> &nbsp;&nbsp;
        <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
      </div>

<!-- 
      <p class="amount">Items 1 to 9 of 12 total</p> -->
      

      <div id="sort-by"> <label class="left"><?php echo $text_sort; ?></label>
      <ul>
        <li>
          <?php foreach ($sorts as $sorts_first) { ?>
          <?php if ($sorts_first['value'] == $sort . '-' . $order) { ?>
          <a href="<?php echo $sorts_first['href']; ?>"><?php echo $sorts_first['text']; ?><span class="right-arrow"></span></a>
          <?php } ?>
          <?php } ?>
        <ul>
        <?php foreach ($sorts as $sorts_second) { ?>
        <?php if ($sorts_second['value'] == $sort . '-' . $order) { ?>
        <?php } else {?>
        <li><a href="<?php echo $sorts_second['href']; ?>"><?php echo $sorts_second['text']; ?></a></li>
        <?php }?>
        <?php } ?>

        </ul>  
        </li>
      </ul>

      <select class="toolbar-select-mob" onchange="setLocation(this.value)">
        <?php foreach ($sorts as $sorts_mob) { ?>
        <?php if ($sorts_mob['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts_mob['href']; ?>" selected="selected"><?php echo $sorts_mob['text']; ?></option>
        <?php } else {?>
        <option value="<?php echo $sorts_mob['href']; ?>"><?php echo $sorts_mob['text']; ?></option>
        <?php }?>
        <?php }?>
      </select>
<!-- <a class="button-arrow button-desc left" title="Set Descending Direction" href="http://www.magikcommerce.com?dir=desc&order=position"></a> -->


    </div><!--sort-by-->

    <div id="limiter"><label><?php echo $text_limit; ?></label>
      <ul>
        <li>
          <?php foreach ($limits as $limits_first) { ?>
          <?php if ($limits_first['value'] == $limit) { ?>
          <a href="<?php echo $limits_first['href']; ?>"><?php echo $limits_first['text']; ?><span class="right-arrow"></span></a>
          <?php } ?>
          <?php } ?>
        <ul>
        <?php foreach ($limits as $limits_second) { ?>
        <?php if ($limits_second['value'] == $limit) { ?>
        <?php } else {?>
        <li><a href="<?php echo $limits_second['href']; ?>"><?php echo $limits_second['text']; ?></a></li>
        <?php }?>
        <?php } ?>

        </ul>  
        </li>
      </ul>

      <select class="toolbar-select-mob" onchange="setLocation(this.value)">
        <?php foreach ($limits as $limits_mob) { ?>
        <?php if ($limits_mob['value'] == $limit) { ?>
        <option value="<?php echo $limits_mob['href']; ?>" selected="selected"><?php echo $limits_mob['text']; ?></option>
        <?php } else {?>
        <option value="<?php echo $limits_mob['href']; ?>"><?php echo $limits_mob['text']; ?></option>
        <?php }?>
        <?php }?>
      </select>

    </div><!--limiter-->
      


    </div><!--sorter-->
    <div class="pager"> </div>

  </div><!--toolbar-->


 <?php /* <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div> */?>
  



  <div class="category-products">
    <ul class="products-grid">
    <?php $i=0; foreach ($products as $product) { ?>
    <li class="item <?php if($i==0) { ?> first <?php } else if($i==2) { ?> last <?php } ?>">
      <div class="item-inner">
      <?php if ($product['thumb']) { ?>      
       <div class="item-img">
        <div class="item-img-info"> <a class="product-image" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"> <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> </a>
          <?php 
            if($this->config->get('magiketios_label_show')==1){ 
             if ($product['price'] && $product['special']) { ?>
             <div class="new-label new-top-left"><?php echo $this->config->get('magiketios_label_title'); ?> </div>       
          <?php }
            } 
          ?>

          <div class="item-box-hover">
            <div class="box-inner"> 
              <div class="product-detail-bnt"><a class="button detail-bnt" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a> </div>
               <?php $this->language->load('module/magiketios');
              
              if($this->config->get('magiketios_layout_quickview') == 1) { ?>
              <div class="product-quick-view">
               <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&product_id=<?php echo $product['product_id']; ?>');" title="Quick View" class="button quick-view"><span><?php echo 'Quick View'; ?></span></a>     
              </div>
              <?php } ?>

            </div>
          </div>
        </div>
      </div>
      <?php } ?>
      <div class="item-info">
        <!-- <div class="sale-label sale-top-right">Sale</div> -->
        <div class="info-inner">
          <div class="item-title"> <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a> </div>
          <div class="item-content">
            <?php if ($product['rating']) { ?>
            <div class="rating">
              <div class="ratings">
                <div class="rating-box">
                   <div class="rating"><img src="catalog/view/theme/etios/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                </div>               
              </div>
            </div>
            <?php } ?>
            <div class="item-price">
              <div class="price-box"> <span class="regular-price" id="product-price-1"> <span class="price">
               <?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                  <?php } ?>
                  <?php /*if ($product['tax']) { ?>
                  <br />
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php }*/ ?>
                </div>
              <?php } ?>
              </span> </span> 
              </div>
            </div>
          </div>
        </div>
        
      </div>   
      </div>
    </li>
    <?php if($i!=2) { $i++; } else { $i=0; } ?>
    <?php } //end foreach ?>
    </ul>

    <ol class="products-list" id="products-list" style="display:none;">
      <?php $i=0; foreach ($products as $product) { ?>
      <li class="item first">
        <?php if ($product['thumb']) { ?>
        <div class="product-image"> <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"> <img class="small-image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" width="230"> </a>
          <?php 
            if($this->config->get('magiketios_label_show')==1){ 
             if ($product['price'] && $product['special']) { ?>
             <div class="new-label new-top-left"><?php echo $this->config->get('magiketios_label_title'); ?> </div>       
          <?php }
            } 
          ?>
        </div>
        <?php } ?>
        <div class="product-shop">
          <h2 class="product-name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h2>
          <div class="price-box">          
            <span class="regular-price" id="product-price-1"> <span class="price">
               <?php if ($product['price']) { ?>
                <div class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                  <?php } ?>
                  <?php /*if ($product['tax']) { ?>
                  <br />
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php }*/ ?>
                </div>
              <?php } ?>
              </span> </span>   
          </div>
          <?php if ($product['rating']) { ?>
          <div class="ratings">
            <div class="rating-box">
              <div class="rating"><img src="catalog/view/theme/etios/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
            </div>          
          </div>
          <?php } ?>
          <div class="desc std">
            <p><?php echo $product['description']; ?></p>
          </div>
          <div class="actions">
            <button class="button btn-cart ajx-cart" title="Add to Cart" type="button" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></button>
            <span class="add-to-links"> <a title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="button link-wishlist"><span><?php echo $button_wishlist; ?></span></a> <a title="<?php echo $button_compare; ?>" class="button link-compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a> </span> </div>
        </div>
      </li>    
      <?php } ?>      
    </ol>
      
  </div>







  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?>


</div>
</article>
</div><!--main-container-inner-->
</section><!--main-container col1-layout-->
<div id="mgkquickview">
<div id="magikloading" style="display:none;text-align:center;margin-top:400px;"><img src="catalog/view/theme/etios/image/loading.gif" alt="loading">
</div></div>

<script type="text/javascript"><!--
function display(view) {
  if (view == 'list') {
    $('.product-grid').attr('class', 'product-list');
    
    $('.product-list > div').each(function(index, element) {
      html  = '<div class="right">';
      html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
      html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
      html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
      html += '</div>';     
      
      html += '<div class="left">';
      
      var image = $(element).find('.image').html();
      
      if (image != null) { 
        html += '<div class="image">' + image + '</div>';
      }
      
      var price = $(element).find('.price').html();
      
      if (price != null) {
        html += '<div class="price">' + price  + '</div>';
      }
          
      html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
      html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
      
      var rating = $(element).find('.rating').html();
      
      if (rating != null) {
        html += '<div class="rating">' + rating + '</div>';
      }
        
      html += '</div>';
            
      $(element).html(html);
    });   
    
    $('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
    
    $.totalStorage('display', 'list'); 
  } else {
    $('.product-list').attr('class', 'product-grid');
    
    $('.product-grid > div').each(function(index, element) {
      html = '';
      
      var image = $(element).find('.image').html();
      
      if (image != null) {
        html += '<div class="image">' + image + '</div>';
      }
      
      html += '<div class="name">' + $(element).find('.name').html() + '</div>';
      html += '<div class="description">' + $(element).find('.description').html() + '</div>';
      
      var price = $(element).find('.price').html();
      
      if (price != null) {
        html += '<div class="price">' + price  + '</div>';
      }
      
      var rating = $(element).find('.rating').html();
      
      if (rating != null) {
        html += '<div class="rating">' + rating + '</div>';
      }
            
      html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
      html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
      html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
      
      $(element).html(html);
    }); 
          
    $('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
    
    $.totalStorage('display', 'grid');
  }
}

view = $.totalStorage('display');

if (view) {
  display(view);
} else {
  display('list');
}
//--></script> 
<?php echo $footer; ?>