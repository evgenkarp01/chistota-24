$( document ).ready(function() {

    var viewWhere ="";
    var viewVivod = "";
    var complectVivod = "";
    var additionllyVivod = new Object();
    var summaResult = 0;
    var whereAttribute = $(".btns-where .but button.active").siblings().val();
    var whereSummMinus = 0;
    var ploAreaSummDecrement = 0;
    var sanAreaSummDecrement = 0;
    var komAreaSummDecrement = 0;
    var viewServiceSumm = 0;
    var complectSumm = 0;
    var dopoptSumm = 0;
    var dopoptSummWindow = 0;
    var whereSumma = Number($(".btns-where .but button.active").siblings().attr("data-whereSumm"));
    summ(whereSumma);




    function summ(varOne){
        if(varOne==0){varOne=0;}
            summaResult += varOne;
            var varper = summaResult;
        $(".resultat .cost-usluga .summa-cost span").text(varper+ploAreaSummDecrement+sanAreaSummDecrement+komAreaSummDecrement+viewServiceSumm+complectSumm+dopoptSumm+" руб");
    }
    

    $(".btns-where .but button").on('click', function(event){
        event.preventDefault();
        whereSummMinus = Number($('input[value="'+whereAttribute+'"]').attr("data-whereSumm"));
        whereAttribute = $(this).siblings("input").val();

        if($(this).hasClass("active")){
            whereSumm = 0;
        }else{
            whereSumm = Number($(this).siblings().attr("data-whereSumm"));
            whereSumm -= whereSummMinus;
            
        }

        $(".btns-where .but button").removeClass("active");
        $(this).addClass("active");
        
        var whereActiveClass = $(this).parent().attr("data-where");
        if($(".btns-view .but").hasClass(whereActiveClass)){
            $(".btns-view .but").hide();
            $(".btns-view ." + whereActiveClass).show();
        }
        viewWhere = $(this).text();
        $(".view-usluga span").text(viewWhere);
        
         $(".btns-view .but button").removeClass("active");
        viewVivod = '';
        viewServiceSumm = 0;
        $("#plus_usluga_result").html(viewVivod);       
        
        summ(whereSumm);
    });
    $(".btns-area .val-decr").on('click', function(){
        var costPloscadArea = Number($("#ploschad_area").attr("data-ploshad"));
        var costKomnatArea = Number($("#col_komnat_area").attr("data-komnati"));
        var costSanuselArea = Number($("#col_sanus_area").attr("data-sanusel"));
        var area = $(this).siblings("input").val();
        area = Number(area);
        if(area>0){
            $(this).siblings("input").val(--area);
        }else{
            area=0;
            $(this).siblings("input").val(area);
        }
        var ploArea = Number($("#ploschad_area").val());
        var komArea = $("#col_komnat_area").val();
        var sanAr = $("#col_sanus_area").val();
        $("#ploschad-usluga span").text($("#ploschad_area").val());
        $("#komnat-usluga span").text($("#col_komnat_area").val());
        $("#sanusel-usluga span").text($("#col_sanus_area").val());
        if(($(this).siblings('input').attr('id')) == 'ploschad_area'){
            if(area >= 50){
                ploAreaSummDecrement = costPloscadArea * (area - 50);  
            }else{ploAreaSummDecrement=0;}
        }else if((($(this).siblings('input').attr('id')) == 'col_sanus_area')){
            sanAreaSummDecrement = costSanuselArea * area;
        }else{
            komAreaSummDecrement = costKomnatArea * area;
        }
        var NullVar = 0;
        summ(NullVar);
    });
    $(".btns-area .val-incr").on('click', function(){
        var costPloscadArea = Number($("#ploschad_area").attr("data-ploshad"));
        var costKomnatArea = Number($("#col_komnat_area").attr("data-komnati"));
        var costSanuselArea = Number($("#col_sanus_area").attr("data-sanusel"));
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
        if(($(this).siblings('input').attr('id')) == 'ploschad_area'){
            if(area >= 50){
                ploAreaSummDecrement = costPloscadArea * (area - 50);
            }else{ploAreaSummDecrement=0;}
        }else if((($(this).siblings('input').attr('id')) == 'col_sanus_area')){
            sanAreaSummDecrement = costSanuselArea * area;
        }else{
            komAreaSummDecrement = costKomnatArea * area;
        }
        var NullVar = 0;
        summ(NullVar);
    });
    $(".btns-area .val-input input").on('input', function(){
        var costPloscadArea = Number($("#ploschad_area").attr("data-ploshad"));
        var costKomnatArea = Number($("#col_komnat_area").attr("data-komnati"));
        var costSanuselArea = Number($("#col_sanus_area").attr("data-sanusel"));

        var area = $(this).val();

        area = Number(area);
        $("#ploschad-usluga span").text($("#ploschad_area").val());
        $("#komnat-usluga span").text($("#col_komnat_area").val());
        $("#sanusel-usluga span").text($("#col_sanus_area").val());
        if(($(this).attr('id')) == 'ploschad_area'){
            if(area >= 50){
                ploAreaSummDecrement = costPloscadArea * (area - 50);
            }else{ploAreaSummDecrement=0;}
        }else if((($(this).attr('id')) == 'col_sanus_area')){
            sanAreaSummDecrement = costSanuselArea * area;
        }else{
            komAreaSummDecrement = costKomnatArea * area;
        }
        var NullVar = 0;
        console.log(area);
        summ(NullVar);
    }); 
    $(".btns-view .but button").on('click', function(event){
        event.preventDefault(); 
        var viewCost = $(this).siblings("input").attr("data-view");
        $(".btns-view .but button").removeClass("active");
        $(this).addClass("active");
        if($(this).hasClass("active")){
            viewServiceSumm = Number(viewCost);
        }else{
            viewServiceSumm = 0;
        }
        
        viewVivod = '<span>'+($(this).text())+'</span>';
        $("#plus_usluga_result").html(viewVivod); 
        var nullView = 0;
        summ(nullView);
    });
    $(".btns-complect .but button").on('click', function(event){
        event.preventDefault(); 
        var complectCost = $(this).siblings("input").attr("data-complect");
        complectVivod = '<span>'+($(this).text())+'</span>';
        if($(this).hasClass('active')){
            $(this).toggleClass("active");
            complectSumm = 0;
            complectVivod ='';
        }else{
            $(".btns-complect .but button").removeClass("active");
            complectSumm = Number(complectCost);
            $(this).addClass("active");
        }
        $("#result_compl_usluga").html(complectVivod);
        var nullComplect = 0;
        summ(nullComplect);
    });
    $(".btns-additionlly .but-add").on('click', function(){
        var snachDop = '<span>'+$(this).text()+'</span>';
        var indexMas= $(this).children("input").val();
        var dopoptCost = $(this).children("input").attr("data-additionlly");
        if(($(this).children("input").val())!="noindex"){
            if($(this).hasClass('active')){
                $(this).toggleClass("active");
                delete additionllyVivod[indexMas];
                dopoptSumm -= Number(dopoptCost);
            }else{
                $(this).addClass("active");
                additionllyVivod[indexMas] = snachDop;
                dopoptSumm += Number(dopoptCost);
            }
            var str = ""; 
            for(k in additionllyVivod) { 
                str += additionllyVivod[k]; 
            }
            $("#result_dop_usluga").html(str);
        }
        var nullDopopt = 0;
        summ(nullDopopt);
    });

    $(".window-wrapper .item").on('click', function(){
        var snachDop = '<span>'+$(this).children().children("h4").text()+'</span>';
        var indexMas= $(this).children("input[type='hidden']").val();
        var dopoptWindowCost = Number($(this).children("input[type='hidden']").attr("data-additionlly"));
        var dopoptWindowCol = Number($(this).children(".input-data").children("input").val());
        $(".window-wrapper .item input[type='text']").on('click', function(e){
            e.preventDefault();
            e.stopPropagation();
        });
        
        if($(this).hasClass('active')){
            
            $(this).toggleClass("active");
            delete additionllyVivod[indexMas];
            dopoptWindowCol = "";
            indexMas= $(this).children(".input-data").children("input").val(dopoptWindowCol);
        }else{
            $(this).addClass("active");
            additionllyVivod[indexMas] = snachDop;

            if(isNaN(dopoptWindowCol)){
                dopoptWindowCol = 1;
                indexMas= $(this).children(".input-data").children("input").val(dopoptWindowCol);
            }else if(dopoptWindowCol < 1 || dopoptWindowCol == ""){
                dopoptWindowCol = 1;
                indexMas = $(this).children(".input-data").children("input").val(dopoptWindowCol);
            }
            dopoptSummWindow = dopoptWindowCost * dopoptWindowCol;
        }
        var str = ""; 
        for(k in additionllyVivod) { 
            str += additionllyVivod[k]; 
        }
        console.log(dopoptWindowCost);
        console.log(dopoptWindowCol);
        $("#result_dop_usluga").html(str);

        var nullDopoptDopoptWindow = 0;
        summ(nullDopoptDopoptWindow);
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
        var indexMas = $(this).children("input[type='hidden']").val();
        var dopoptAllCost = $(this).children("input").attr("data-additionlly");
        if($(this).hasClass('active')){
            $(this).toggleClass("active");
            delete additionllyVivod[indexMas];
            dopoptSumm -= Number(dopoptAllCost);
        }else{
            $(this).addClass("active");
            additionllyVivod[indexMas] = snachDop;
            dopoptSumm += Number(dopoptAllCost);
        }
        var str = ""; 
        for(k in additionllyVivod) { 
            str += additionllyVivod[k]; 
        }
        $("#result_dop_usluga").html(str);
        var nullDopoptAll = 0;
        summ(nullDopoptAll);
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
    var comment = $('textarea[name="comment_calculator"]').val();
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


        $.ajax({
          type: 'POST',
          url: '..//assets/site/php/send.php',
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
    
    
    $(".btn-dop-usl-window button, .btn-services-back-calc button").on('click', function(){
            $.magnificPopup.close();
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
})