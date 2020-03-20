<footer>
  <?php
$this->language->load('module/magiketios');
$facebookurl=$this->config->get('magiketios_facebook_url');
$twitterurl=$this->config->get('magiketios_twitter_url');
$gplusurl=$this->config->get('magiketios_googleplus_url');
$rssurl=$this->config->get('magiketios_rss_url');
$pintresturl=$this->config->get('magiketios_pinterest_url');
$linkedinurl=$this->config->get('magiketios_linkedin_url');
$youtubeurl=$this->config->get('magiketios_youtube_url');

?> 

<div class="footer-newsletter">
  <div class="inner">
        <div class="about-text">
<h2 class="about-title">Best Etios Opencart theme. Are you like this theme ?</h2>
<div class="pur-now"><a title="Purchase" href="#">Purchase Now</a></div>
</div>

        <div class="social">
        <h4>Connect with Us</h4>
        <ul class="link">
          <?php if($facebookurl!='') { ?>
          <li class="fb"><a href="<?php echo $facebookurl; ?>" target="_blank"></a></li>
          <?php } ?>
          <?php if($twitterurl!='') { ?>
          <li class="tw"><a href="<?php echo $twitterurl; ?>" target="_blank"></a></li>
          <?php } ?>
          <?php if($gplusurl!='') { ?>
          <li class="googleplus"><a href="<?php echo $gplusurl; ?>" target="_blank"></a></li>
          <?php } ?>
          <?php if($rssurl!='') { ?>
          <li class="rss"><a href="<?php echo $rssurl; ?>" target="_blank"></a></li>
          <?php } ?>
          <?php if($pintresturl!='') { ?>
          <li class="pintrest"><a href="<?php echo $pintresturl; ?>" target="_blank"></a></li>
          <?php } ?>
          <?php if($linkedinurl!='') { ?>
          <li class="linkedin"><a href="<?php echo $linkedinurl; ?>" target="_blank"></a></li>
          <?php } ?>
          <?php if($youtubeurl!='') { ?>
          <li class="youtube"><a href="<?php echo $youtubeurl; ?>" target="_blank"></a></li>
          <?php } ?>
        </ul>
      </div>
</div>
</div>
<div class="inner">
  
<?php if ($informations) { ?>
<div class="footer-column">
<h4><?php echo $text_information; ?></h4>
<ul class="links">
<?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
</ul>
</div>
<?php } ?>


<div class="footer-column">
    <h4><?php echo $text_service; ?></h4>
    <ul class="links">
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>

<div class="footer-column-last">
    <h4><?php echo $text_extra; ?></h4>
    <ul class="links">
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>

<div class="footer-column-1">
      <h4><?php echo $this->language->get('footer_contactus'); ?></h4>
       <p>
        <?php if(trim($this->config->get('magiketios_about_company_text')) != '') {
          echo substr(html_entity_decode($this->config->get('magiketios_about_company_text')), 0, 100); ?>
        <?php }?>
      </p>
      <?php if ($this->config->get('magiketios_custom_address')):?>
      <address>
      <i class="add-icon">&nbsp;</i><?php echo $this->config->get('magiketios_custom_address'); ?>
      </address>
      <?php endif; ?>
      <?php if ($this->config->get('magiketios_telephone')) : ?>
      <div class="phone-footer"><i class="phone-icon">&nbsp;</i><?php echo $this->config->get('magiketios_telephone'); ?></div>
      <?php endif; ?>
      <?php if ($this->config->get('magiketios_email')): ?>
      <div class="email-footer"><i class="email-icon">&nbsp;</i> 
        <a href="mailto:<?php echo $this->config->get('magiketios_email');?>"><?php echo $this->config->get('magiketios_email'); ?></a></div>
      <?php endif; ?>
    </div>

</div><!--inner-->


<div class="footer-bottom">
<div class="inner">
<div class="coppyright">
        <?php
        if(trim($this->config->get('footer_powered_text')) != '') {
          echo html_entity_decode($this->config->get('footer_powered_text'));
        } else {
          echo $powered;
        }
        ?></div>

        <div class="payment-accept">
<div><img alt="payment1" src="catalog/view/theme/etios/image/payment-1.png"> <img alt="payment2" src="catalog/view/theme/etios/image/payment-2.png"> <img alt="payment3" src="catalog/view/theme/etios/image/payment-3.png"> <img alt="payment4" src="catalog/view/theme/etios/image/payment-4.png"></div>
</div>

 
</div>
</div>




</footer>
<?php if($this->config->get('footer_scroll_totop') == 1) { ?>   
<a href="#" id="toTop" style="display: inline;"><span id="toTopHover" style="opacity: 0;"></span></a>
<?php } ?>
<?php /*?>
<a small donation.
Please donate via PayPal to donate@opencart.com
//--> */?>
</div>
</body></html>