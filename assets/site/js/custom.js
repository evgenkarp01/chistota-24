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
                $("header .menu .mmenu ul li a").css("opacity","0");
				$(".mmenu").slideUp();
				men=!men;

			}
			else
			{
                
				$(".mmenu").slideDown();
				men=!men;
                $("header .menu .mmenu ul li a").css("opacity","1");
			}
		});
	$("#sandwich, .menu_item").click(function() {
		$("#sandwich").toggleClass("active");
	});


    $('.zoom-gallery').magnificPopup({
		delegate: 'a',
		type: 'image',
		closeOnContentClick: false,
		closeBtnInside: false,
		mainClass: 'mfp-with-zoom mfp-img-mobile',
		image: {
			verticalFit: true
		},
		gallery: {
			enabled: true
		},
		zoom: {
			enabled: true,
			duration: 300, // don't foget to change the duration also in CSS
			opener: function(element) {
				return element.find('img');
			}
		}
		
	});

    
    
    $(".file-upload input[type=file]").change(function(){
         var filename = $(this).val().replace(/.*\\/, "");
         $("#filename").val(filename);
    });
    
    /*
    var locations = [
            ["Ульяновская д.25", 47.216003, 39.714761, "http://ewal-web.ru/assets/site/img/mapmark.png"],
        ];
        var map = new google.maps.Map(document.getElementById('mapa'), {
            zoom: 18,
            styles: 
            [
                {"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},
                {"featureType":"road","elementType":"all","stylers":[{"saturation":-100},{"lightness":45}]},
                {"featureType":"road.highway","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"visibility":"off"}]},
                {"featureType":"transit","elementType":"all","stylers":[{"visibility":"off"}]},
                {"featureType":"water","elementType":"all","stylers":[{"color":"#46bcec"},{"visibility":"on"}]}
            ],
            center: new google.maps.LatLng(47.216003, 39.714761),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var infowindow = new google.maps.InfoWindow();
        var marker, i;

        for (i = 0; i < locations.length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                map: map,
                icon: {
                    url: locations[i][3],
                    scaledSize: new google.maps.Size(104, 122)
                }
            });
            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    infowindow.setContent(locations[i][0]);
                    infowindow.open(map, marker);
                }
            })(marker, i));
        }
    
    */
   

    var htmls = $("#hidden_area li").map(function(){
        return $(this).prop('outerHTML');
    }).get();
    var num = 16;
    var arrDop ="";
    function arrDopus(num, arrDop){
        if(htmls.length<num){
            num=htmls.length;
        }
        for (i=0; i<num; i++){
            arrDop += htmls[i];
        }
        $("#arrListDops").html(arrDop);
        if((htmls.length)>num){
            $(".price-index .prc-index .distance .down").show();
        }
    }
    arrDopus(num, arrDop);
    $(".prc-index .distance .down img").on('click', function(){
        if($(this).hasClass("rotate")){
            num = 16;
        }else{
            num = htmls.length;
        }
        arrDopus(num, arrDop);
        $(this).toggleClass("rotate");
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
                                

});