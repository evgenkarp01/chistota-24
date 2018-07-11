$( document ).ready(function() {
    



	$('.slider .sldr').slick({
        dots: false,
        arrows: true,
        prevArrow: '.prev-index',
        nextArrow: '.next-index',
        infinite: true,
        speed: 700,
    });

    $('.work-sldr-index').slick({
        dots: false,
        arrows: true,
        prevArrow: '.prev-work-index',
        nextArrow: '.next-work-index',
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3
    });









});