$( document ).ready(function() {
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
    
    var viewVivod = "";
    $(".btns-view .but button").on('click', function(event){
        event.preventDefault(); 
        $(".btns-view .but button").removeClass("active");
        $(this).addClass("active");
        viewVivod += '<span>'+($(this).text())+'</span>';
        
        $("#plus_usluga_result").html(viewVivod);
        
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
})