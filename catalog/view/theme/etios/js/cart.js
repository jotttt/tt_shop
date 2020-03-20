function deleteCartInCheckoutPage(){ 

    jQuery(".checkout-cart-index a.btn-remove2,.checkout-cart-index a.btn-remove").click(function(event) {
        event.preventDefault();
               if(!confirm(confirm_content)){
            return false;
        }
   
        
    });
   
    return false;
}
function slideEffectAjax() {
      jQuery('.top-cart-contain').mouseenter(function() {
            jQuery(this).find(".top-cart-content").stop(true, true).slideDown();
        });

        jQuery('.top-cart-contain').mouseleave(function() {
            jQuery(this).find(".top-cart-content").stop(true, true).slideUp();
        });
}
function deleteCartInSidebar() {

    if(is_checkout_page>0) return false;
    jQuery('#cart-sidebar a.btn-remove, #mini_cart_block a.btn-remove').each(function(){});
}  

jQuery(document).ready(function(){
    slideEffectAjax();
});
