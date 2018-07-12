$( document ).ready(function() {
    



	$('.slider .sldr').slick({
        dots: false,
        arrows: true,
        prevArrow: '.prev-index',
        nextArrow: '.next-index',
        infinite: true,
        speed: 700,
        responsive: [
            {
            breakpoint: 480,
                settings: {
                    arrows: false,
                }
            }
        ]
    });

    $('.work-sldr-index').slick({
        dots: false,
        arrows: true,
        prevArrow: '.prev-work-index',
        nextArrow: '.next-work-index',
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        responsive: [
            {
            breakpoint: 1280,
                settings: {
                    slidesToShow: 2,
        			slidesToScroll: 2,
                }
            },
            {
            breakpoint: 650,
                settings: {
                    slidesToShow: 1,
        			slidesToScroll: 1,
                }
            }
        ]
    });

    var men=true;
	$("#sandwich").click(function()
		{
			if(men==false)
			{
				$(".mmenu").slideUp();
				men=!men;
			}
			else
			{
				$(".mmenu").slideDown();
				men=!men;
			}
		});
	$("#sandwich, .menu_item").click(function() {
		$("#sandwich").toggleClass("active");
	});







});