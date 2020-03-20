<?php if (count($currencies) > 1) { ?>


  <div class="currency-switcher">
    <?php foreach ($currencies as $currency) { ?>
        <?php if ($currency['code'] == $currency_code) { ?>  
        <div class="select_curr"><span> <?php echo $currency['code']; ?> </span> <span class="caret"></span> </div>
        <?php } ?>
    <?php } ?>   
    <div class="currency_detail" style="display: none;">
      <div class="currency-inner">
        <div class="currency">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">    
              <div id=""><!-- <p><?php //echo $text_currency; ?></p> -->
                <ul>
                    <?php foreach ($currencies as $currency) { ?>
                    <?php if ($currency['code'] == $currency_code) { ?>     
                    <?php if ($currency['symbol_left']) { ?>
                    <li><a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_left']." - ".$currency['code']; ?></b></a></li>
                    <?php } else { ?>
                    <li><a title="<?php echo $currency['title']; ?>"><b><?php echo $currency['symbol_right']." - ".$currency['code']; ?></b></a></li>
                    <?php } ?>
                    <?php } else { ?>
                    <?php if ($currency['symbol_left']) { ?>
                    <li class="item"><a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().submit();"><?php echo $currency['symbol_left']." - ".$currency['code']; ?></a></li>
                    <?php } else { ?>
                    <li class="item"><a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>'); $(this).parent().parent().parent().parent().submit();"><?php echo $currency['symbol_right']." - ".$currency['code']; ?></a></li>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                </ul>
                <input type="hidden" name="currency_code" value="" />
                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
            </div>
        </form>
    </div>
    <!--currency-->
</div>
<!--currency-inner-->
</div>
<!--currency_detail-->

<!--select_curr-->
</div>

<?php } ?>





<script type="text/javascript">
jQuery(function() {
    jQuery(".currency-switcher").hover(function() {
        jQuery('.select_curr').addClass('active');
        jQuery(".currency_detail").stop(true, true).slideDown(200, "easeInSine");
    },  
    function() {
        jQuery('.select_curr').removeClass('active');
        jQuery(".currency_detail").stop(true, true).fadeOut(100, "easeInCubic");
    });

});
</script>
