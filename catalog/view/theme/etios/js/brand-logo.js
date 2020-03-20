/*============= brand logo=============*/

function mycarousel_initCallback(carousel)
{
    carousel.buttonNext.bind('click', function() {
        carousel.startAuto(0);
    });

    carousel.buttonPrev.bind('click', function() {
        carousel.startAuto(0);
    });
    carousel.clip.hover(function() {
        carousel.stopAuto();
    }, function() {
        carousel.startAuto();
    });
};

	
$jq(document).ready(function() {
    $jq('#mycarousel3').jcarousel({
	    scroll:1,
		animation: 1200,
        auto: 0,
        wrap: 'circular',
        initCallback: mycarousel_initCallback
		
    });
});


/*============= End brand logo=============*/