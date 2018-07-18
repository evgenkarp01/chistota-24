$( document ).ready(function() {

    var viewWhere ="";
    var viewVivod = "";
    var complectVivod = "";
    var additionllyVivod = {};
    

    $(".btns-where .but button").on('click', function(event){
        event.preventDefault();
        $(".btns-where .but button").removeClass("active");
        $(this).addClass("active");
        var where = $(this).siblings("input").val();
        var whereActiveClass = $(this).parent().attr("data-where");
        if($(".btns-view .but").hasClass(whereActiveClass)){
            $(".btns-view .but").hide();
            $(".btns-view ." + whereActiveClass).show();
        }
        viewWhere = $(this).text();
        $(".view-usluga span").text(viewWhere);
        
         $(".btns-view .but button").removeClass("active");
        viewVivod = '';
        $("#plus_usluga_result").html(viewVivod);
        
    });
    
    $(".btns-area .val-decr").on('click', function(){
        var area = $(this).siblings("input").val();
        area = Number(area);
        if(area>0){
            $(this).siblings("input").val(--area);
        }else{
            area=0;
            $(this).siblings("input").val(area);
        }
        $("#ploschad-usluga span").text($("#ploschad_area").val());
        $("#komnat-usluga span").text($("#col_komnat_area").val());
        $("#sanusel-usluga span").text($("#col_sanus_area").val());
    });
    
    $(".btns-area .val-incr").on('click', function(){
        var area = $(this).siblings("input").val();
        area = Number(area);
        if(area>=0){
            $(this).siblings("input").val(++area);
        }else{
            area=0;
            $(this).siblings("input").val(area);
        }
        $("#ploschad-usluga span").text($("#ploschad_area").val());
        $("#komnat-usluga span").text($("#col_komnat_area").val());
        $("#sanusel-usluga span").text($("#col_sanus_area").val());
    });
    
    
    $(".btns-view .but button").on('click', function(event){
        event.preventDefault(); 
        $(".btns-view .but button").removeClass("active");
        $(this).addClass("active");
        viewVivod = '<span>'+($(this).text())+'</span>';
        $("#plus_usluga_result").html(viewVivod); 
    });
    
    
    $(".btns-complect .but button").on('click', function(event){
        event.preventDefault(); 
        complectVivod = '<span>'+($(this).text())+'</span>';
        if($(this).hasClass('active')){
            $(this).toggleClass("active");
            complectVivod ='';
        }else{
            $(".btns-complect .but button").removeClass("active");

            $(this).addClass("active");
        }
        $("#result_compl_usluga").html(complectVivod);
    });


   
    $(".btns-additionlly .but-add").on('click', function(){
        var snachDop = '<span>'+$(this).text()+'</span>';
        var indexMas= $(this).children("input").val();
        if(($(this).children("input").val())!="noindex"){
            if($(this).hasClass('active')){
                $(this).toggleClass("active");
                delete additionllyVivod[indexMas];
            }else{
                $(this).addClass("active");
                additionllyVivod[indexMas] = snachDop;
            }
            var str = ""; 
            for(k in additionllyVivod) { 
                str += additionllyVivod[k]; 
            }
            $("#result_dop_usluga").html(str);
        }
    });

    $(".window-wrapper .item").on('click', function(){
        var snachDop = '<span>'+$(this).children().children("h4").text()+'</span>';
        var indexMas= $(this).children("input[type='hidden']").val();
        $(".window-wrapper .item input[type='text']").on('click', function(e){
            e.preventDefault();
            e.stopPropagation();
        });
        if($(this).hasClass('active')){
            $(this).toggleClass("active");
            delete additionllyVivod[indexMas];
        }else{
            $(this).addClass("active");
            additionllyVivod[indexMas] = snachDop;
        }
        var str = ""; 
        for(k in additionllyVivod) { 
            str += additionllyVivod[k]; 
        }
        $("#result_dop_usluga").html(str);
    });

    $(".dop-usl-window .dop-us-wrap .item").on('click', function(){
        var snachDop = '<span>'+$(this).children().children("p").text()+'</span>';
        var indexMas= $(this).children("input[type='hidden']").val();
        $(".dop-usl-window .dop-us-wrap .item input[type='text']").on('click', function(e){
            e.preventDefault();
            e.stopPropagation();
        });
        if($(this).hasClass('active')){
            $(this).toggleClass("active");
            delete additionllyVivod[indexMas];
        }else{
            $(this).addClass("active");
            additionllyVivod[indexMas] = snachDop;
        }
        var str = ""; 
        for(k in additionllyVivod) { 
            str += additionllyVivod[k]; 
        }
        $("#result_dop_usluga").html(str);
    });

    $(".allservices .item-allservices").on('click', function(){
        var snachDop = '<span>'+$(this).children().children("p").text()+'</span>';
        var indexMas= $(this).children("input[type='hidden']").val();
        if($(this).hasClass('active')){
            $(this).toggleClass("active");
            delete additionllyVivod[indexMas];
        }else{
            $(this).addClass("active");
            additionllyVivod[indexMas] = snachDop;
        }
        var str = ""; 
        for(k in additionllyVivod) { 
            str += additionllyVivod[k]; 
        }
        $("#result_dop_usluga").html(str);
    });
    $("input[name='date_calculator']").on('input', function(){
        var dateVivodResult = $(this).val();
        $(".result-date-usluga span").text(dateVivodResult);
    });
    $("#option_time").on('input', function(){
        var timeVivodResult = $(this).val();
        $(".result-time-usluga span").text(timeVivodResult);
    });




    
    function calc(ev) {

    var ploschad = $("#ploschad_area").val();
    var colComnat = $("#col_komnat_area").val();
    var colSanUsel = $("#col_sanus_area").val();
    var comment = $('input[name="comment_calculator"]').val();
    var photo = $('input[name="file"]').val();
    var name = $('input[name="name_calculator"]').val();
    var phone = $('input[name="phone_calculator"]').val();
    var email = $('input[name="email_calculator"]').val();
    var city = $('input[name="city_calculator"]').val();
    var street = $('input[name="street_calculator"]').val();
    var home = $('input[name="home_calculator"]').val();
    var apart = $('input[name="apart_calculator"]').val();
    var entrance = $('input[name="entrance_calculator"]').val();
    var date = $('input[name="date_calculator"]').val();
    var time = $("#option_time").val();

    var url = '../php/calc.php';



        $.ajax({
          type: 'POST',
          url: '../php/calc.php',
          data: { 
            "viewWhere": viewWhere,
            "ploschad": ploschad,
            "colComnat": colComnat,
            "colSanUsel": colSanUsel,
            "viewVivod": viewVivod,
            "complectVivod": complectVivod,
            "comment": comment,
            "photo": photo,
            "name" : name,
            "phone": phone,
            "email": email,
            "city": city,
            "street": street,
            "home": home,
            "apart": apart,
            "entrance": entrance,
            "time": time,
            "date": date,
            "additionllyVivod": additionllyVivod
            
            

            },
          success: function(data) {
            $(ev).closest('.result').html(data);
            $(ev).slideUp('fast');
          },
          error:  function(xhr, str){
        
          }
        });
    }
    
    
    
    
    $("#send_raschet").on('click', function(event){
        event.preventDefault();
        calc();

    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
})