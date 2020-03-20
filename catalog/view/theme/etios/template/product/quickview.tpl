<div class="magik-quickview">
<div id="notification1"></div>
    <div class="product-view" itemid="#product_base" itemtype="#" itemscope="" >
        <div class="product-essential">
   
      <div class="product-img-box">
                        <?php if ($thumb || $images) { ?>
                        <?php if ($thumb) { ?>
                        <div class="product-image image"> <img src="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></div>

                        <?php } ?>
                        <?php if ($images) { ?>
                        <div class="more-images">
                            <div class="more-views">
                                
                                     
                                   
                                        <ul>
                                            <?php foreach ($images as $image) { ?>
                                            <li> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></li>
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
      <?php /*if ($thumb || $images) { ?>
      <div class="product-img-box">      
      
<span id="ppslider-leftarrow1" class="ppslider-arrows">Prev</span>
<span id="ppslider-rightarrow1" class="ppslider-arrows">Next</span>

         

          <div class="bx-wrapper">
                <div class="bx-viewport">
                  <ul id="large-images1">
                    
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
        <div id="bxpager1"> 
 
        
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


      </div>
      <?php } */ ?>

      <div class="product-shop product-info">         
        <div class="product-name">
          <h1><?php echo $heading_title; ?></h1>
        </div>  
         <?php if ($review_status) { ?>
        <div class="ratings">
          <div><img src="catalog/view/theme/etios/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="jQuery('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="jQuery('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
          <div class="share"><!-- AddThis Button BEGIN -->
            <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
            <!-- AddThis Button END --> 
          </div>
        </div>
        <?php } ?>

      
        <div class="short-description">
          <?php if ($manufacturer) { ?>
          <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
          <?php } ?>
          <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
          <?php if ($reward) { ?>
          <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
          <?php } ?>
          <span><?php echo $text_stock; ?></span> <?php echo $stock; ?>
        </div>
        <?php if ($price) { ?>
        <div class="price"><?php echo $text_price; ?>
          <?php if (!$special) { ?>
          <?php echo $price; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
          <?php } ?>
          <br />
          <?php if ($tax) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
          <?php } ?>
          <?php if ($points) { ?>
          <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
          <?php } ?>
          <?php if ($discounts) { ?>
          <br />
          <div class="discount">
            <?php foreach ($discounts as $discount) { ?>
            <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
            <?php } ?>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
       

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
                <input name="quantity" id="qty" maxlength="12" value="<?php echo $minimum; ?>" title="Qty" class="input-text qty" type="text">
                <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
              </div>
        
              <div class="custom pull-left">
                <button type="button" class="increase items-count" onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"><i class="icon-angle-up">&nbsp;</i></button>
                <button type="button" class="reduced items-count" onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty > 0 ) result.value--;return false;"><i class="icon-angle-down">&nbsp;</i></button>
              </div>
            </div>
            <div class="pull-right">
              <a ><button type="button" title="<?php echo $button_cart; ?>" class="button btn-cart" id="button-cart"><span><i class="icon-basket">&nbsp;</i> <?php echo $button_cart; ?></span></button></a>
              <ul class="add-to-links">
                <li> <a class="link-wishlist" onclick="addToWishList('<?php echo $product_id; ?>');"><span><?php echo $button_wishlist; ?></span></a></li>
                <li><span class="separator">|</span> <a class="link-compare"  onclick="addToCompare('<?php echo $product_id; ?>');"><span><?php echo $button_compare; ?></span></a></li>
              </ul>
            </div>
          </div>          
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
    </div>    
    <?php echo $content_bottom; ?></div>
  </div>
  </div>
  

  
  
  
 </div>
<script type="text/javascript"><!--
 //jQuery("a[rel^='prettyPhoto']").prettyPhoto();
//--></script> 
<script type="text/javascript"><!--
jQuery('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: jQuery('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			//jQuery('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						jQuery('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {                 
        //jQuery('#dialog').dialog("close");                                  
        //ajaxLoading();                                  
        setTimeout(function(){                                                            
           jQuery('#cart-total').html(json['total']);                 
                          
           jQuery('#notification1').html('<div class="success1">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>'); 

           jQuery('.success1').fadeIn('slow');                 

           jQuery('html, body').animate({ scrollTop: 0 }, 'slow');                
        }, 3000);                                   
        //setTimeout(function(){jQuery('.success').fadeOut('slow');},10000);
            
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
		jQuery('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		jQuery('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		jQuery('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		jQuery('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			jQuery('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			jQuery('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		jQuery('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
jQuery('#review .pagination a').live('click', function() {
	jQuery('#review').fadeOut('slow');
		
	jQuery('#review').load(this.href);
	
	jQuery('#review').fadeIn('slow');
	
	return false;
});			

jQuery('#qty-input').val(<?php echo $minimum; ?>);

jQuery('.product-info .input-qty .qty-minus').bind('click', function() {
	if(jQuery(this).next().children().val()>1) {
	  
	  jQuery(this).next().children().val(parseInt(jQuery(this).next().children().val())-1);
	}
});

jQuery('.product-info .input-qty .qty-plus').bind('click', function() {
	jQuery(this).prev().children().val(parseInt(jQuery(this).prev().children().val())+1);
	
});			

jQuery('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

jQuery('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent(jQuery('input[name=\'name\']').val()) + '&text=' + encodeURIComponent(jQuery('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent(jQuery('input[name=\'rating\']:checked').val() ? jQuery('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent(jQuery('input[name=\'captcha\']').val()),
		beforeSend: function() {
			jQuery('.success, .warning').remove();
			jQuery('#button-review').attr('disabled', true);
			jQuery('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			jQuery('#button-review').attr('disabled', false);
			jQuery('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				jQuery('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				jQuery('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				jQuery('input[name=\'name\']').val('');
				jQuery('textarea[name=\'text\']').val('');
				jQuery('input[name=\'rating\']:checked').attr('checked', '');
				jQuery('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
jQuery('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	jQuery('.magik-quickview .date, .magik-quickview .datetime, .magik-quickview .time').bgIframe();
}

jQuery('.magik-quickview .date').datepicker({dateFormat: 'yy-mm-dd'});
jQuery('.magik-quickview .datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
jQuery('.magik-quickview .time').timepicker({timeFormat: 'h:m'});


jQuery(document).ready(function(){
        var width = jQuery('.product-view .product-img-box').width() * 0.80;
        var src_img_width = 60;
        var src_img_height = 85;
        var ratio_width = 400;
        var ratio_height = 400;
        
        src_img_width = 100 * ratio_width / ratio_height;
        var height = width * ratio_height / ratio_width;

        jQuery('#etalage').cloud_zoom({
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
        jQuery(".product-img-box .cloud_zoom li.zoom_img").zoom();
        jQuery('.product-view .product-img-box .zoom-control a').css('right',((jQuery('.zoom_small_thumbs img').first().width())/2-3)+"px");
        if(jQuery('.zoom_small_thumbs').width() == 0)
            jQuery('.product-view .product-img-box .zoom-control a').css('right',((jQuery('.zoom_small_thumbs img').first().width())/2-3)+"px");
        jQuery(window).resize(function(e){
            var width = jQuery('.product-view .product-img-box').width() * 0.80;
            var height = width * ratio_height / ratio_width;
            zoom_enabled = false;
            if(jQuery(window).width()<500)
                zoom_enabled = false;
            jQuery('#etalage').cloud_zoom({
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
            jQuery('.product-view .product-img-box .zoom-control a').css('right',((jQuery('.zoom_small_thumbs').width())/2)+"px");
        });
        jQuery('.zoom-prev').on('click', function(){
            etalage_previous();
        });

        jQuery('.zoom-next').on('click', function(){
            etalage_next();
        });
    });
jQuery(document).ready(function(){

	// jQuery('#zoom01, .cloud-zoom-gallery').CloudZoom();
	 
	// jQuery("#zoom01").live('click', function(event) {
	 
	// 	event.preventDefault();

 //    });
 });  
//--></script>
</div>
