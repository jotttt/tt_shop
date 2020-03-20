<?php echo $header; ?><?php echo $column_left; ?>
<section class="main-container col2-right-layout">
  <div class="main-container-inner">
  <div class="checkout-page">   
  <article class="col-main">   
    <div class="dashboard">
      <div id="content"><?php echo $content_top; ?>
        <div class="breadcrumbs">
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
          <?php } ?>
        </div>
        <div class="page-title"><h2><?php echo $heading_title; ?></h2></div>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <h2><?php echo $text_edit_address; ?></h2>
          <div class="content">
            <table class="form">
              <tr>
                <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-text large-field" />
                  <?php if ($error_firstname) { ?>
                  <span class="error"><?php echo $error_firstname; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-text large-field" />
                  <?php if ($error_lastname) { ?>
                  <span class="error"><?php echo $error_lastname; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><?php echo $entry_company; ?></td>
                <td><input type="text" name="company" value="<?php echo $company; ?>" class="input-text large-field" /></td>
              </tr>
              <?php if ($company_id_display) { ?>
              <tr>
                <td><?php echo $entry_company_id; ?></td>
                <td><input type="text" name="company_id" value="<?php echo $company_id; ?>" class="input-text large-field" />
                  <?php if ($error_company_id) { ?>
                  <span class="error"><?php echo $error_company_id; ?></span>
                  <?php } ?></td>
              </tr>
              <?php } ?>
              <?php if ($tax_id_display) { ?>
              <tr>
                <td><?php echo $entry_tax_id; ?></td>
                <td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" class="input-text large-field" />
                  <?php if ($error_tax_id) { ?>
                  <span class="error"><?php echo $error_tax_id; ?></span>
                  <?php } ?></td>
              </tr>
              <?php } ?>
              <tr>
                <td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
                <td><input type="text" name="address_1" value="<?php echo $address_1; ?>" class="input-text large-field" />
                  <?php if ($error_address_1) { ?>
                  <span class="error"><?php echo $error_address_1; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><?php echo $entry_address_2; ?></td>
                <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" class="input-text large-field" /></td>
              </tr>
              <tr>
                <td><span class="required">*</span> <?php echo $entry_city; ?></td>
                <td><input type="text" name="city" value="<?php echo $city; ?>" class="input-text large-field" />
                  <?php if ($error_city) { ?>
                  <span class="error"><?php echo $error_city; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
                <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text large-field" />
                  <?php if ($error_postcode) { ?>
                  <span class="error"><?php echo $error_postcode; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><span class="required">*</span> <?php echo $entry_country; ?></td>
                <td><select name="country_id">
                    <option value=""><?php echo $text_select; ?></option>
                    <?php foreach ($countries as $country) { ?>
                    <?php if ($country['country_id'] == $country_id) { ?>
                    <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                  <?php if ($error_country) { ?>
                  <span class="error"><?php echo $error_country; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
                <td><select name="zone_id">
                  </select>
                  <?php if ($error_zone) { ?>
                  <span class="error"><?php echo $error_zone; ?></span>
                  <?php } ?></td>
              </tr>
              <tr>
                <td><?php echo $entry_default; ?></td>
                <td><?php if ($default) { ?>
                  <input type="radio" name="default" value="1" checked="checked" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="default" value="0" />
                  <?php echo $text_no; ?>
                  <?php } else { ?>
                  <input type="radio" name="default" value="1" />
                  <?php echo $text_yes; ?>
                  <input type="radio" name="default" value="0" checked="checked" />
                  <?php echo $text_no; ?>
                  <?php } ?></td>
              </tr>
            </table>
          </div>
          <div class="buttons">
            <div class="left"><a href="<?php echo $back; ?>"><button type="button"  class="button back"><?php echo $button_back; ?></button></a>
            <button type="submit" class="button continue"><?php echo $button_continue; ?></button>
            </div>
          </div>
        </form>
        <?php echo $content_bottom; ?></div>
        </article>
        <aside class="col-right sidebar">     
        <?php echo $column_right; ?>     
        </aside>
  </div>
</div>
</section> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/address/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},		
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script> 
<?php echo $footer; ?>