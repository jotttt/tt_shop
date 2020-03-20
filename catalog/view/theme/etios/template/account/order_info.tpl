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
  <table class="list">
    <thead>
      <tr>
        <td colspan="2"><?php echo $text_order_detail; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="width: 50%;"><?php if ($invoice_no) { ?>
          <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
          <?php } ?>
          <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
          <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
        <td style="width: 50%;"><?php if ($payment_method) { ?>
          <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
          <?php } ?>
          <?php if ($shipping_method) { ?>
          <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
          <?php } ?></td>
      </tr>
    </tbody>
  </table>
  <table class="list">
    <thead>
      <tr>
        <td><?php echo $text_payment_address; ?></td>
        <?php if ($shipping_address) { ?>
        <td><?php echo $text_shipping_address; ?></td>
        <?php } ?>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><?php echo $payment_address; ?></td>
        <?php if ($shipping_address) { ?>
        <td><?php echo $shipping_address; ?></td>
        <?php } ?>
      </tr>
    </tbody>
  </table>
  <table class="list">
    <thead>
      <tr>
        <td><?php echo $column_name; ?></td>
        <td><?php echo $column_model; ?></td>
        <td><?php echo $column_quantity; ?></td>
        <td><?php echo $column_price; ?></td>
        <td><?php echo $column_total; ?></td>
        <?php if ($products) { ?>
        <td style="width: 1px;"></td>
        <?php } ?>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr>
        <td><?php echo $product['name']; ?>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?></td>
        <td><?php echo $product['model']; ?></td>
        <td><?php echo $product['quantity']; ?></td>
        <td><?php echo $product['price']; ?></td>
        <td><?php echo $product['total']; ?></td>
        <td><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/default/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td><?php echo $voucher['description']; ?></td>
        <td></td>
        <td>1</td>
        <td><?php echo $voucher['amount']; ?></td>
        <td><?php echo $voucher['amount']; ?></td>
        <?php if ($products) { ?>
        <td></td>
        <?php } ?>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td colspan="3"></td>
        <td><b><?php echo $total['title']; ?>:</b></td>
        <td><?php echo $total['text']; ?></td>
        <?php if ($products) { ?>
        <td></td>
        <?php } ?>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
  <?php if ($comment) { ?>
  <table class="list">
    <thead>
      <tr>
        <td><?php echo $text_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><?php echo $comment; ?></td>
      </tr>
    </tbody>
  </table>
  <?php } ?>
  <?php if ($histories) { ?>
  <h2><?php echo $text_history; ?></h2>
  <table class="list">
    <thead>
      <tr>
        <td><?php echo $column_date_added; ?></td>
        <td><?php echo $column_status; ?></td>
        <td><?php echo $column_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($histories as $history) { ?>
      <tr>
        <td><?php echo $history['date_added']; ?></td>
        <td><?php echo $history['status']; ?></td>
        <td><?php echo $history['comment']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
  <?php } ?>
  <div class="buttons">
    <div class=""><a href="<?php echo $continue; ?>"><button type="button"  class="button continue"><?php echo $button_continue; ?></button></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
   </article>
        <aside class="col-right sidebar">     
        <?php echo $column_right; ?>     
        </aside>
  </div>
</div>
</section>         
<?php echo $footer; ?> 