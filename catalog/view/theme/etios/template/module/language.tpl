<?php if (count($languages) > 1) { ?>
<div class="language-switcher">
 	
	<div class="language_detail" style="display: none;">
		<div class="language-inner">
			<div class="language">	
				<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
					<div id=""><!-- <p><?php //echo $text_language; ?></p>	 -->						
						<ul>    
							<?php foreach ($languages as $language) { ?>	     
							<li class="">
								<a title="<?php echo $language['name'];?>"  onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $(this).parent().parent().parent().parent().submit();"> <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <span><?php echo $language['name'];?></span> </a> 
							</li>
							<?php } ?>
						</ul>
						<input type="hidden" name="language_code" value="" />
						<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
					</div>
				</form>
			</div>
			<!--language-->
		</div>
		<!--language-inner-->
	</div>
	<!--language_detail-->
		<?php foreach ($languages as $language) { ?>	
	<?php if ($language['code'] == $language_code) { ?>
	<div class="select_lang"> <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name'];?>" />  <span class="en_lang"><?php //echo $language['name'];?></span> <span class="caret"></span> </div>
	<?php } ?> 	
	<?php } ?>

	<!--select_lang-->
</div>
<?php } ?>
<script type="text/javascript">
jQuery(function() {
	jQuery(".language-switcher").hover(function() {
		jQuery('.select_lang').addClass('active');
		jQuery(".language_detail").stop(true, true).slideDown(200, "easeInSine");
	},  
	function() {
		jQuery('.select_lang').removeClass('active');
		jQuery(".language_detail").stop(true, true).fadeOut(100, "easeInCubic");
	});

});
</script>


