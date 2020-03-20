<div id="brand_scroller">
<div class="slider-wrap">
<div class="slider">
<ul style="">
<?php foreach ($banners as $banner) { ?>
<li>
	<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
</li>
<?php } ?>
</ul>
</div>
<a href="#" class="slider-arrow sa-left">&lt;</a> <a href="#" class="slider-arrow sa-right">&gt;</a> </div>

</div>
</div>

<script>
jQuery('.slider').lbSlider({
    leftBtn: '.sa-left',
    rightBtn: '.sa-right',
    visible: 5,
    autoPlay: true,
    autoPlayDelay: 3
});
</script>



<!-- <div id="carousel<?php /* echo $module; ?>">
  <ul class="jcarousel-skin-opencart">
    <?php /*foreach ($banners as $banner) { ?>
    <!-- <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li> -->
    <?php } */?>
  </ul>
</div>
<script type="text/javascript"><!--
$('#carousel<?php //echo $module; ?> ul').jcarousel({
	vertical: false,
	visible: <?php //echo $limit; ?>,
	scroll: <?php //echo $scroll; ?>
});
//-->