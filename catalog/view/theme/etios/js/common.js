function callQuickView(qurl) { 
    $('#mgkquickview').show();
    $('#magikloading').show();
    $.get(qurl, function(data) {
      $.fancybox(data);
      $('#magikloading').hide();
      $('#mgkquickview').hide();
    });
	 // $.fancybox({
  //       width: 1100,
  //       height: 400,
  //       autoSize: false,
  //       href: qurl,
  //       type: 'ajax'
  //   });
 }
 
