<?php echo $header; ?><?php //echo $column_left; ?><?php echo $column_right; ?>
<section class="main-container col1-layout">
  <div class="main-container-inner">
  <div id="content"><?php echo $content_top; ?>
    <div class="breadcrumbs"><div class="inner">
      <ul>
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <li><?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
    </ul>
    </div>
    </div>
    <article class="col-main">
    <div class="product-view" itemid="#product_base" itemtype="#" itemscope="" >
        
   <div class="product-img-box">
                        <?php if ($thumb || $images) { ?>
                        <?php if ($thumb) { ?>
                        <div class="product-image image"> <a href="" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>

                        <?php } ?>
                        <?php if ($images) { ?>
                        <div class="more-images">
                            <div class="more-views">
                                
                                     
                                   
                                        <ul  >
                                            <?php foreach ($images as $image) { ?>
                                            <li> <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                                            <?php } ?>
                                        </ul>
                                    
                              
                            </div>
                        </div>

                        <?php } ?>

                        <?php } ?>

                        <script type="text/javascript">
                            jQuery(document).ready(function($) {

                            function mycarousel_initCallback(carousel) {
                            $('#products_slider_next2').bind('click', function() {
                            carousel.next();
                            return false;
                        });
                        $('#products_slider_prev2').bind('click', function() {
                        carousel.prev();
                        return false;
                    });
                };

                $('#thumbscroller').jcarousel({
                scroll: 1,
                initCallback: mycarousel_initCallback,
                buttonNextHTML: null,
                buttonPrevHTML: null
            });
        });
                        </script>        



                        <!-- end: more-images -->
                    </div>
      <?php /* if ($thumb || $images) { ?>
        <div id="product-img-box">
         <!--  <div class="new-label new-top-left">New</div> -->
          <span id="ppslider-leftarrow" class="ppslider-arrows">Prev</span> 
          <span id="ppslider-rightarrow" class="ppslider-arrows">Next</span>

          <div class="bx-wrapper">
<div class="bx-viewport">
<ul id="large-images">
<?php  if ($thumb) { ?>
<li id="0">  
<img src="<?php echo $popup; ?>"  style="margin: 0px;" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"  class="product-image" /></li>
<?php } ?>
<?php if ($images) { $i=1; ?>
<?php foreach ($images as $image) { ?>
<li id="<?php echo $i;?>"> 
<img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" class="product-image" />
</li>
<?php $i++;} ?>
<?php } ?>
</ul>
</div> <!--bx-viewport-->
<div class="bx-controls"></div>
</div> <!--bx-wrapper-->


<div id="bxpagerwrap">
<div id="bxpager"> 
<?php if ($thumb) { ?> 
<a  data-slide-index="0" href="">
<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="" class="" width="64" height="64"/>
</a> 
<?php } ?>
<?php if ($images) { $j=1; ?>
<?php foreach ($images as $image) { ?>
<a  data-slide-index="<?php echo $j;?>" href="">
<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="" width="64" height="64"/>
</a> 
<?php $j++; }?>
<?php }?>
</div> <!--#bxpager-->
</div> <!--#bxpagerwrap-->

          
          <script type="text/javascript">
  (function(jQuery){
    if( /iPad/i.test(navigator.userAgent) ) {
            var slider = jQuery('#large-images').bxSlider({
                pagerCustom: '#bxpager',
                controls: false,
                mode: 'horizontal',
                speed: 800,
                touchEnabled: true,
                oneToOneTouch: false,
                useCSS: false,
                onSliderLoad: function(){
                    jQuery('.bx-loading').remove();
                }
            });
    } else if( /Android/i.test(navigator.userAgent) ) {
            var slider = jQuery('#large-images').bxSlider({
                pagerCustom: '#bxpager',
                controls: false,
                mode: 'horizontal',
                speed: 800,
                //swipeThreshold: 150,
                preloadImages: 'visible',
                //oneToOneTouch: false,
                useCSS: false,
                onSliderLoad: function(){
                    jQuery('.bx-loading').remove();
                }
            });
    } else {
            var slider = jQuery('#large-images').bxSlider({
                pagerCustom: '#bxpager',
                controls: false,
                mode: 'fade',
                speed: 800,
                useCSS: false,
                preloadImages: 'visible',//if you set it to all, loader is visible until every image has been downloaded
                onSliderLoad: function(){
                  jQuery('.bx-loading').remove();

                  var firstimage = jQuery('#large-images').find('li:first a.zoomable');
                
                if ( ! firstimage.hasClass('zoomified')) { 
                  firstimage.addClass('zoomified').zoomy(); 
                }
                },
                onSlideAfter: function(slide){ 
                  var image = slide.find('.zoomable');
                    
                  if ( ! image.hasClass('zoomified')) {
                    image.addClass('zoomified').zoomy();  
                  }    
                }
            });
          jQuery('.bx-viewport').css('overflow','visible');//for zoom lense
          jQuery('#large-images').css('overflow','visible');//for zoom lense
        }
        
        jQuery('#ppslider-leftarrow').click(function(){
            slider.goToPrevSlide();
            return false;
          });
       
        jQuery('#ppslider-rightarrow').click(function(){
        slider.goToNextSlide();
        return false;
      });
  })(jQuery);
</script>
        </div>
      <?php }*/ ?>

      <div class="product-shop product-info">
         <!-- <div class="product-next-prev"> <a class="product-next" href="#"><span></span></a> <a class="product-prev" href="#"><span></span></a> </div> -->
        <div class="product-name">
          <h1><?php echo $heading_title; ?></h1>
        </div>  


      
        <div class="short-description">
          <?php if ($manufacturer) { ?>
          <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
          <?php } ?>
          <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
          <?php if ($reward) { ?>
          <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
          <?php } ?>
          <p></p>
        </div>


        
          <?php if ($price) { ?>
          <div class="price-box"><?php //echo $text_price; ?>
          <?php if (!$special) { ?>
          <?php echo $price; ?>
          <?php } else { ?>
          
          <p class="old-price">
<span class="price-label">Regular Price:</span>
<span id="" class="price"> <?php echo $price; ?> </span>
          </p> 

          <p class="special-price"> 
            <span class="price-label">Special Price</span> 
            <span class="price" id=""> <?php echo $special; ?> </span> 
          </p>

          
          <?php } ?>
        
          <?php if ($tax) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span>
          <?php } ?>
          <?php if ($points) { ?>
          <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span>
          <?php } ?>
          <?php if ($discounts) { ?>
          
          <div class="discount">
            <?php foreach ($discounts as $discount) { ?>
            <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
            <?php } ?>
          </div>
          <?php } ?>
        </div>
        <?php } ?>




        <?php if ($review_status) { ?>
        <div class="ratings">
          <div><img src="catalog/view/theme/etios/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>


          
        </div>
        <?php } ?>




       <p class="availability in-stock"> <?php echo $text_stock; ?><span> <?php echo $stock; ?></span></p>

        <?php if ($profiles): ?>
        <div class="option">
            <h2><span class="required">*</span><?php echo $text_payment_profile ?></h2>
            <br />
            <select name="profile_id">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($profiles as $profile): ?>
                <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
                <?php endforeach; ?>
            </select>
            <br />
            <br />
            <span id="profile-description"></span>
            <br />
            <br />
        </div>
        <?php endif; ?>
        <?php if ($options) { ?>
        <div class="options">
          <h2><?php echo $text_option; ?></h2>
          <br />
          <?php foreach ($options as $option) { ?>
          <?php if ($option['type'] == 'select') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <select name="option[<?php echo $option['product_option_id']; ?>]">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </option>
              <?php } ?>
            </select>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'radio') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
            <br />
            <?php } ?>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'checkbox') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
            <br />
            <?php } ?>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'image') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <table class="option-image">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <tr>
                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label></td>
              </tr>
              <?php } ?>
            </table>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'text') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'textarea') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'file') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'date') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'datetime') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
          </div>
          <br />
          <?php } ?>
          <?php if ($option['type'] == 'time') { ?>
          <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b><br />
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
          </div>
          <br />
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>

        <div class="add-to-box">
          <div class="add-to-cart">
            <div class="pull-left">
              
              <div class="pull-left">
                <label for="qty"><?php echo $text_qty; ?></label>
                <!-- <input name="quantity" id="qty" maxlength="12" value="<?php echo $minimum; ?>" title="Qty" class="input-text qty" type="text"> -->
                <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
              </div>
        
              <div class="custom pull-left">
                
                <button type="button" class="reduced items-count" onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty > 0 ) result.value--;return false;"><i class="icon-minus">&nbsp;</i></button>
                                
                <input name="quantity" id="qty" maxlength="12" value="<?php echo $minimum; ?>" title="Qty" class="input-text qty" type="text">

                <button type="button" class="increase items-count" onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"><i class="icon-plus">&nbsp;</i></button>

                
              </div>
              
              <div class="pull-left">
              <a ><button type="button" title="<?php echo $button_cart; ?>" class="button btn-cart" id="button-cart"><span><i class="icon-basket">&nbsp;</i> <?php echo $button_cart; ?></span></button></a>
              </div>

            </div>

          </div>

          <div class="email-addto-box">
            <ul class="add-to-links">
                <li> <a class="link-wishlist" onclick="addToWishList('<?php echo $product_id; ?>');"><span><?php echo $button_wishlist; ?></span></a></li>
                <li><span class="separator">|</span> <a class="link-compare"  onclick="addToCompare('<?php echo $product_id; ?>');"><span><?php echo $button_compare; ?></span></a></li>
              </ul>
          </div>          
        </div>

        

        <div class="share social"><!-- AddThis Button BEGIN -->
            <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
            <!-- AddThis Button END --> 
          </div>

        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
    
    <div class="product-collateral">
        <div class="addtional-info">
        <div id="tabs" class="tab-box">
          <ul class="product-tabs">
          <li class="tabLink first activeLink"><a href="#tab-description"><?php echo $tab_description; ?></a></li>
          <?php if ($attribute_groups) { ?>
          <li id="product_tabs_description_tabbed" class="tabLink"><a href="#tab-attribute"><?php echo $tab_attribute; ?></a></li>
          <?php } ?>
          <?php if ($review_status) { ?>
          <li id="product_tabs_tags_tabbed" class="tabLink"><a href="#tab-review"><?php echo $tab_review; ?></a></li>
          <?php } ?>
          <?php /* if ($products) { ?>
          <li id="product_tabs_upsell_tabbed" class="tabLink"><a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a></li>
          <?php } */?>
          <?php
          if($this->config->get('magiketios_product_customtab')==1) { 
            echo '<li id="product_tabs_custom" class="tabLink"><a href="#tab-customtab">'.$this->config->get('magiketios_product_customtab_title').'</a></li>';
          }
          ?>
          <?php if ($tags) { ?>
          <li id="product_tag" class="tabLink"><a href="#tab-tag"><?php echo $text_tags; ?></a></li>
          <?php } ?>
        </div>


        <div id="tab-description" class="tab-content"><?php echo $description; ?></div>


        <?php if ($attribute_groups) { ?>
        <div id="tab-attribute" class="tab-content">
          <table class="attribute">
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <thead>
              <tr>
                <td colspan="2"><?php echo $attribute_group['name']; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
              <tr>
                <td><?php echo $attribute['name']; ?></td>
                <td><?php echo $attribute['text']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
            <?php } ?>
          </table>
        </div>
        <?php } ?>

        <?php if ($review_status) { ?>
        <div id="tab-review" class="tab-content">
          <div id="review"></div>
          <h2 id="review-title"><?php echo $text_write; ?></h2>
          <b><?php echo $entry_name; ?></b><br />
          <input type="text" name="name" value="" class="input-text"/>
          <br />
          <br />
          <b><?php echo $entry_review; ?></b>
          <textarea name="text" cols="40" rows="8" style="width: 97%;"></textarea><br>
          <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
          <br />
          <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
          <input type="radio" name="rating" value="1" />
          &nbsp;
          <input type="radio" name="rating" value="2" />
          &nbsp;
          <input type="radio" name="rating" value="3" />
          &nbsp;
          <input type="radio" name="rating" value="4" />
          &nbsp;
          <input type="radio" name="rating" value="5" />
          &nbsp;<span><?php echo $entry_good; ?></span><br />
          <br />
          <b><?php echo $entry_captcha; ?></b><br />
          <input type="text" class="input-text" name="captcha" value="" /><br />
          <br />
          <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
          <br />
          <div class="buttons">
            <div class=""><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
          </div>
        </div>
        <?php } ?>

        <?php
        if($this->config->get('magiketios_product_customtab')==1) { 
        echo '<div id="tab-customtab" class="tab-content">'.html_entity_decode($this->config->get('magiketios_product_customtab_content')).'</div>';
        }
        ?>

        <?php if ($tags) { ?>
        <div class="tags" id="tab-tag">
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
        </div>
        <?php } ?>


        <?php if ($products) { ?>
        <div class="related-block">

        <div class="new_title center">
        <h2><span><?php echo $tab_related; ?></span></h2>
        </div> 
        
       <div class="block-content category-products">
       <div class=" jcarousel-skin-tango4">
       <div class="jcarousel-container jcarousel-container-horizontal" style="position: relative; display: block;">
            <div class="jcarousel-clip jcarousel-clip-horizontal" style="position: relative; overflow: hidden;">

             <ul class="products-grid jcarousel-list jcarousel-list-horizontal" id="mycarousel4" style="overflow: hidden; position: relative; top: 0px; margin: 0px; padding: 0px; left: 0px; width: 2724px;">
                <?php foreach ($products as $product) { ?>
                <li class="item jcarousel-item jcarousel-item-horizontal">
                  <div class="item-inner">
                    <div class="item-img">
                      <?php if ($product['thumb']) { ?>
                      <div class="item-img-info"> <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>" class="product-image"> <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"> </a>
                        <?php 
                          if($this->config->get('magiketios_label_show')==1){ 
                           if ($product['price'] && $product['special']) { ?>
                           <div class="new-label new-top-left"><?php echo $this->config->get('magiketios_label_title'); ?> </div>       
                        <?php }
                          } 
                        ?>
                        <div class="item-box-hover">
                          <div class="box-inner"> 
                            <div class="product-detail-bnt">
                              <a class="button detail-bnt" onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a>
                            </div>

                        <?php   if($this->config->get('magiketios_layout_quickview') == 1) { ?>
              <div class="product-quick-view">
               <a data-fancybox-type="ajax" onclick="callQuickView('index.php?route=product/quickview&product_id=<?php echo $product['product_id']; ?>');" title="Quick View" class="button quick-view"><span><?php echo 'Quick View'; ?></span></a>     
              </div>
              <?php } ?>

                          </div>
                        </div> 
                      </div>
                      <?php } ?>
                    </div>
                    <div class="item-info">
                      <div class="info-inner">
                        <div class="item-title"> <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a> </div>
                        <div class="item-content">
                          <div class="rating">
                            <div class="ratings">
                              <div class="rating-box">
                                <?php if ($product['rating']) { ?>
                                <div class="rating"><img src="catalog/view/theme/etios/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
                                <?php } ?>
                              </div>
                              <p class="rating-links"> <a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
                            </div>
                          </div>
                          <div class="item-price">
                            <div class="price-box"> <span class="regular-price" id="product-price-1"> <span class="price">
                            <?php if ($product['price']) { ?>
                            <div class="price">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?>
                              <?php } else { ?>
                              <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                              <?php } ?>
                            </div>
                            <?php } ?> 
                            </span> </span> </div>
                          </div>
                        </div>
                      </div>
                     
                    </div>
                  </div>
                </li>
                <?php } ?>
              </ul>
</ul>
              <div class="jcarousel-prev jcarousel-prev-horizontal" style="display: block;"></div>
              <div class="jcarousel-next jcarousel-next-horizontal" style="display: block;"></div>

</div>
            
            </div>
          </div>

        </div><!--related-block-->
        <?php }?>
       

       
      </div>
    </div>    
    <?php echo $content_bottom; ?></div>
  </div>
  </div>
  </article>
  </div>
</section>    
<script type="text/javascript"><!--
$(document).ready(function() {
  $('.colorbox').colorbox({
    overlayClose: true,
    opacity: 0.5,
    rel: "colorbox"
  });
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
    dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
    success: function(json) {
      $('.success, .warning, .attention, information, .error').remove();
            
      if (json['success']) {
                $('#profile-description').html(json['success']);
      } 
    }
  });
});
    
$('#button-cart').bind('click', function() { 
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
    dataType: 'json',
    success: function(json) {
      $('.success, .warning, .attention, information, .error').remove();
      
      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
          }
        }
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
      } 
      
      if (json['success']) {
        $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
          
        $('.success').fadeIn('slow');
          
        $('#cart-total').html(json['total']);
        
        $('html, body').animate({ scrollTop: 0 }, 'slow'); 
      } 
    }
  });
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
  action: 'index.php?route=product/product/upload',
  name: 'file',
  autoSubmit: true,
  responseType: 'json',
  onSubmit: function(file, extension) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
  },
  onComplete: function(file, json) {
    $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
    
    $('.error').remove();
    
    if (json['success']) {
      alert(json['success']);
      
      $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
    }
    
    if (json['error']) {
      $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
    }
    
    $('.loading').remove(); 
  }
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
  $('#review').fadeOut('slow');
    
  $('#review').load(this.href);
  
  $('#review').fadeIn('slow');
  
  return false;
});     

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
    beforeSend: function() {
      $('.success, .warning').remove();
      $('#button-review').attr('disabled', true);
      $('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
    },
    complete: function() {
      $('#button-review').attr('disabled', false);
      $('.attention').remove();
    },
    success: function(data) {
      if (data['error']) {
        $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
      }
      
      if (data['success']) {
        $('#review-title').after('<div class="success">' + data['success'] + '</div>');
                
        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').attr('checked', '');
        $('input[name=\'captcha\']').val('');
      }
    }
  });
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
  if ($.browser.msie && $.browser.version == 6) {
    $('.date, .datetime, .time').bgIframe();
  }

  $('.date').datepicker({dateFormat: 'yy-mm-dd'});
  $('.datetime').datetimepicker({
    dateFormat: 'yy-mm-dd',
    timeFormat: 'h:m'
  });
  $('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<script type="text/javascript">
    $(document).ready(function(){
        var width = $('.product-view .product-img-box').width() * 0.80;
        var src_img_width = 60;
        var src_img_height = 85;
        var ratio_width = 400;
        var ratio_height = 400;
        
        src_img_width = 100 * ratio_width / ratio_height;
        var height = width * ratio_height / ratio_width;

        $('#etalage').cloud_zoom({
            thumb_image_width: width,
            thumb_image_height: height,
            source_image_width: src_img_width,
            source_image_height: src_img_height,
            zoom_area_width: width,
            zoom_area_height: height,
            zoom_enable: false,
            smallthumb_hide_single: false,
            smallthumbs_position: 'right',
            show_icon: false,
            autoplay: false
        });
        $(".product-img-box .cloud_zoom li.zoom_img").zoom();
        $('.product-view .product-img-box .zoom-control a').css('right',(($('.zoom_small_thumbs img').first().width())/2-3)+"px");
        if($('.zoom_small_thumbs').width() == 0)
            $('.product-view .product-img-box .zoom-control a').css('right',(($('.zoom_small_thumbs img').first().width())/2-3)+"px");
        $(window).resize(function(e){
            var width = $('.product-view .product-img-box').width() * 0.80;
            var height = width * ratio_height / ratio_width;
            zoom_enabled = false;
            if($(window).width()<500)
                zoom_enabled = false;
            $('#etalage').cloud_zoom({
                thumb_image_width: width,
                thumb_image_height: height,
                source_image_width: src_img_width,
                source_image_height: src_img_height,
                zoom_area_width: width,
                zoom_area_height: height,
                zoom_enable: zoom_enabled,
                smallthumb_hide_single: false,
                smallthumbs_position: 'right',
                show_icon: true,
                autoplay: false
            });
            $('.product-view .product-img-box .zoom-control a').css('right',(($('.zoom_small_thumbs').width())/2)+"px");
        });
        $('.zoom-prev').on('click', function(){
            etalage_previous();
        });

        $('.zoom-next').on('click', function(){
            etalage_next();
        });
    });
</script>
<?php echo $footer; ?>