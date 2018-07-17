$( document ).ready(function() {
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
        $(".view-usluga span").text($(this).text());
        
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
})