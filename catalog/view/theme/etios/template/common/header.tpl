<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" id="html">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/styles.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/responsive.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/nav.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/slider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/add-slider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/pro-img-slider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/etios/stylesheet/mob-nav.css" />

<link href='//fonts.googleapis.com/css?family=<?php echo str_replace(' ', '+', $this->config->get('magiketios_fonts_transform')); ?>:200,300,400,500,600,700,800' rel='stylesheet' type='text/css'><!-- 
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700"> -->
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/common_outer.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/cloud-zoom.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/mob-nav.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/totop.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/fancybox/jquery.fancybox.js"></script>
<link type="text/css" rel="stylesheet" href="catalog/view/theme/etios/js/fancybox/jquery.fancybox.css">

<script type="text/javascript" src="catalog/view/theme/etios/js/nav.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/banner.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/brand-scroll.js"></script>
<script type="text/javascript" src="catalog/view/theme/etios/js/slides.min.jquery.js"></script>


<script type="text/javascript" src="catalog/view/theme/etios/js/products-slider.js"></script>

<!-- <script type="text/javascript" src="catalog/view/theme/etios/js/pro-img-slider.js"></script>
 -->

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<script type="text/javascript">

document.getElementById("html").className = "";
 $(document).ready(function($){
    $(".button-grid").click(function(e) {
        $(".category-products ul.products-grid").fadeIn();
        $(".category-products ol.products-list").fadeOut();
        $(this).addClass('button-active');
        $('.button-list').removeClass('button-active');
        e.preventDefault();
    });
    $(".button-list").click(function(e) {
        $(".category-products ul.products-grid").fadeOut();
        $(".category-products ol.products-list").fadeIn();
        $(this).addClass('button-active');
        $('.button-grid').removeClass('button-active');
        e.preventDefault(); 
    })
});
</script>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<style type="text/css">
/*  update google Font  */
body,.cms-index-index,h1, h2, h3, h4, h5, h6, .block .block-title, .slide-title,.col2-set h4,.mini-cart .basket a,#search,.totals h3,.crosssel h2,#shopping-cart-table h4,.box-reviews .form-list li label,.pager .pages li span,.pager .pages li a,.data-table th,.buttons-set .back-link a,.side-nav-categories .block-title,.box-category ul li a,.box-category > ul > li a.active,.box-category > ul > li ul li a,.block-layered-nav .block-subtitle,.sidebar,.sidebar .block-layered-nav .price,.sidebar .link-cart, .sidebar .link-reorder, .block .actions a,.block-tags .actions a.view-all,.ajax-checkout a,.sidebar .block-cart .block-subtitle,.related-slider h2,.block-related .price-box .old-price .price,.block-related a.link-cart,.block-related a.link-cart:hover,ol#compare-items li a.product-name span,.block-viewed li span,#recently-viewed-items .product-name a,.block-compared li span,#recently-compared-items .product-name a ,.block-poll label,.block-poll .label,.block-subscribe .input-text:focus,.block-company li span,.product-title,.prod_image_detail .description,.ratings .rating-links a,.regular-price .price,.special-price,.price-from .price-label,.minimal-price .price-label,.products-list .product-shop .desc,.products-list .product-shop p,.products-grid .actions button.button.btn-cart span,#product-tabs > dt,.tab-box .activeLink a,.tab-box a,.tab-box a:hover,.product-options dt label, .box-reviews dt, .data-table, .fraction-slider .slide-subtitle,.form-add-tags label,.data-table thead th, .data-table thead td, .data-table tfoot th, .data-table tfoot td, .cart .totals table th, .cart .totals table td,.recent-orders .title-buttons strong,.product-view .box-tags .form-add label,.add-to-cart label,select#billing-address-select:focus,.one-page-checkout .active .step-title,#opc-login input,.group-select .required,#wishlist-table button.button.remove-item span span,.store-img-box .offer-box span,.productgrid-area .product-name,.slider-arrow, .flex-direction-nav .flex-prev, .flex-direction-nav .flex-next, .button-arrow, .dropdown .arrow, .dropdown .button, .elastislide-next, .elastislide-prev, .opc .step-title a, .prettycheckbox > a, .prettyradio > a, .fraction-slider .prev, .fraction-slider .next, .bx-wrapper .bx-controls-direction a, .tp-leftarrow, .tp-rightarrow,.newsletter .title-News,.upsell-block .block-title,.up-sell-slider .block-title,.popular-block .block-title,.sidebar .link-cart, .sidebar .link-reorder, .block .actions a,.featured-cat .featured-box,.featured-cat .featured-box span,.tab-content font
{  font-family: '<?php echo $this->config->get('magiketios_fonts_transform'); ?>',  sans-serif;   } 

/* sale label */
.new-label {background:<?php echo $this->config->get('magiketios_label_color'); ?>}

/*Main color section */

body {background:<?php echo $this->config->get('magiketios_color_body_bg'); ?>;color:<?php echo $this->config->get('magiketios_color_body_color'); ?>}

a {color:<?php echo $this->config->get('magiketios_color_link'); ?>}
a:hover {color:<?php echo $this->config->get('magiketios_color_linkhover'); ?>}

/* header color section */
header .top-links { background-color: <?php echo $this->config->get('magiketios_header_bg'); ?>;}
.toplinks div.links div a{color:<?php echo $this->config->get('magiketios_header_link'); ?>;}
.toplinks div.links div a:hover{color:<?php echo $this->config->get('magiketios_header_linkhover'); ?>;}
.currency_detail a b{color:<?php echo $this->config->get('magiketios_currencylang'); ?>;}

/*Top Menu*//*
nav{background:<?php echo $this->config->get('magiketios_topmenu_bg'); ?> }*/
/*.navbar-nav > li > a{ border-left: 1px <?php echo $this->config->get('magiketios_topmenu_border'); ?> solid;color:<?php echo $this->config->get('magiketios_topmenu_link'); ?>; }
.navbar-nav>li:last-child { border-right: 1px <?php echo $this->config->get('magiketios_topmenu_border'); ?> solid;}*/
.navbar-nav > li:hover > a{ color:<?php echo $this->config->get('magiketios_topmenu_linkhover'); ?> }
#nav li.full-menu div.level1 a{ color:<?php echo $this->config->get('magiketios_topmenu2_link'); ?>}
#nav li.full-menu div.level1 a:hover{ color:<?php echo $this->config->get('magiketios_topmenu2_linkhover'); ?>}

.price-box .price-old{ color:<?php echo $this->config->get('magiketios_oldprice'); ?> }
.price-box .price-new{ color:<?php echo $this->config->get('magiketios_newprice'); ?> }
.regular-price .price{ color:<?php echo $this->config->get('magiketios_regularprice'); ?> }

.button{background-color:<?php echo $this->config->get('magiketios_button_bg'); ?> }
.button:hover{background-color: <?php echo $this->config->get('magiketios_button_hoverbg'); ?>}

footer{background:<?php echo $this->config->get('magiketios_footer_bg'); ?> }
footer .footer-column a{color: <?php echo $this->config->get('magiketios_color_footerlinks'); ?>}
footer .footer-column a:hover{color: <?php echo $this->config->get('magiketios_color_footerlinkshover'); ?>}
footer .copyright{color: <?php echo $this->config->get('magiketios_color_powered'); ?>}
</style>
</head>
<body class="flexible cms-index-index cms-etios-home">

<div class="sale-offer-box">
<div class="sale-offer-left"><img src="catalog/view/theme/etios/image/sale-offer.png"  alt="sale-offer" /></div>
<div class="sale-offer-right"><img src="catalog/view/theme/etios/image/sale-offer1.png"  alt="sale-offer" /></div></div><!--sale-offer-box-->

<header>
<div class="top-links">
  <div class="inner">
    <div class="language-box"><?php echo $language; ?> </div><!--language-box-->
    <div class="currency-box"><?php echo $currency; ?></div><!--currency-box-->
     <div id="welcome">
    <?php if (!$logged) { ?>
    <p class="welcome-msg"><?php echo $text_welcome; ?></p>
    <?php } else { ?>
    <p class="welcome-msg"><?php echo $text_logged; ?></p>
    <?php } ?>
  </div><!--welcome-->

<div class="top-cart-contain">
<div class="mini-cart">
  <?php    echo $cart; ?>
</div><!--mini-cart-->
<div style="display:none" id="ajaxconfig_info"> <a href="#/"></a>
          <input type="hidden" value="">
          <input type="hidden" value="1" id="enable_module">
          <input type="hidden" value="1" class="effect_to_cart">
          <input type="hidden" value="Go to shopping cart" class="title_shopping_cart">
        </div>
</div><!--top-cart-contain-->


<div class="toplinks">
  <div class="links">
    <div class="login"><?php if (!$logged) { ?>
      <a href="<?php echo HTTP_SERVER . 'index.php?route=account/login'; ?>">Log In</a>

      <?php }  else { ?>
      <a href="<?php echo HTTP_SERVER . 'index.php?route=account/logout'; ?>">Log Out</a>
      <?php } ?></div>
     <div class="myaccount"><a title="My Wishlist" href="<?php echo $wishlist; ?>"><span>Wishlist</span></a></div>
          <div class="check"><a title="compare" href="<?php echo $compare; ?>"><span>Compare</span></a></div>
    </div><!--links-->

        <div class="mob-links">
          <div class="account">
            <div class="click-nav">
              <ul class="no-js">
                <li><a title="Company" class="clicker"><span class="my_ac">Account</span><span class="caret"></span> </a>
                  <ul class="link">
                    <li><a href="<?php echo $account; ?>" title="My Account">My Account</a></li>
                    <li><a href="<?php echo $compare; ?>" title="Compare">Compare</a></li>
                    <li><a href="<?php echo $wishlist; ?>" title="My Wishlist">Wishlist</a></li>                    
                    <li class="last">
                      <?php if (!$logged) { ?>  
                      <a href="<?php echo HTTP_SERVER . 'index.php?route=account/login'; ?>" title="Log In"><span>Log In</span></a>
                      <?php }  else { ?>
                      <a href="<?php echo HTTP_SERVER . 'index.php?route=account/logout'; ?>">Log Out</a>
                      <?php } ?></div>
                   </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

</div><!--toplinks-->

  </div><!--inner-->
</div><!--top-links-->

<div class="header">
<div class="search-box">
 <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="searchbox" id="search"/>    
      <button type="submit" title="search" id="submit-button" class="search-btn-bg"><span>&nbsp;</span></button>
</div>
<?php if ($logo) { ?>
      <div class="logo"><a href="<?php echo $home; ?>" title="<?php echo $name; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>"></a>        
      </div>
      <?php } ?>
</div>

  <div class="hidden-desktop">
    <div id="dl-menu" class="dl-menuwrapper">
      <button class="dl-trigger">Open Menu</button>
      <ul class="dl-menu">
        <?php foreach ($categories as $category) { ?>
                <li><a class="level-top" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                  <?php if ($category['children']) { ?>
          
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul class="dl-submenu">
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li class="level1 first"><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                    <?php } ?>
              
                <?php } ?>
                </li>
                <?php } ?> 

      </ul>
    </div>
    <!--navmenu-->
  </div>
</header>
<nav>
<div class="nav-inner">
  <?php if ($categories) { ?>
<ul id="nav" class="nav navbar-nav full-menu">
    <?php if($this->config->get('magiketios_tophome')==1){?>
      <?php }?>
    <?php foreach ($categories as $category) { ?>
    <li class="level0 first parent full-menu">
      <a href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a>
      <?php if ($category['children']) { ?>
      <div style="display: none;" class="level1">
      <div class="menu-content">
      <div class="content-block grid9">
      <?php for ($i = 0; $i < count($category['children']);) { ?>
      <ul class="level1">
      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($category['children'][$i])) { ?>
      <li class="level1 first parent grid_5 clear"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a></li>
      <?php } ?>
      <?php } ?>
      </ul>
      <?php } ?>
      </div>
      </div>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
</ul>
  <?php } ?>
</div><!--nav-inner-->

<script type="text/javascript">
//<![CDATA[
    jQuery(document).ready(function(){
        var scrolled = false;
        jQuery("#nav li.level0.drop-menu").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeIn(100);
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul.level1').fadeOut(100);
            }
            return false;
        });
        jQuery("#nav li.level0.drop-menu li").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').css({top:0,left:"165px"});
                var offset = jQuery(this).offset();
                if(offset && (jQuery(window).width() < offset.left+325)){
                    jQuery(this).children('ul').removeClass("right-sub");
                    jQuery(this).children('ul').addClass("left-sub");
                    jQuery(this).children('ul').css({top:0,left:"-167px"});
                } else {
                    jQuery(this).children('ul').removeClass("left-sub");
                    jQuery(this).children('ul').addClass("right-sub");
                }
                jQuery(this).children('ul').fadeIn(100);
            }
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('ul').fadeOut(100);
            }
        });
        jQuery("#nav li.level0.full-menu").mouseover(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('div.level1').fadeIn(100);
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 740){
                jQuery(this).children('div.level1').fadeOut(100);
            }
            return false;
        });
       

    });
//]]>
</script>
</nav>

<div id="container">
<!-- <div id="header"> -->

 
<!--   <div class="links"><a href="<?php //echo $home; ?>"><?php //echo $text_home; ?></a><a href="<?php //echo $wishlist; ?>" id="wishlist-total"><?php //echo $text_wishlist; ?></a><a href="<?php //echo $account; ?>"><?php //echo $text_account; ?></a><a href="<?php //echo $shopping_cart; ?>"><?php //echo $text_shopping_cart; ?></a><a href="<?php //echo $checkout; ?>"><?php //echo $text_checkout; ?></a></div>
 --><!-- </div> -->
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>
