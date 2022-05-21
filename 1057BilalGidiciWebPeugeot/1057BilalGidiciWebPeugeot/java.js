/*modelalt*/
$(function () {
    var m = 0;
    var t = 0;
    var f = 0;
    var s = 0;
    $(".modeller").hover(function () {
        if (m % 2 == 0) {         
                $(".modelalt").show();             
        }
        else $(".modelalt").hide();
            m++; 
    });

    /*ticarialt*/
    $(".ticariarac").hover(function () {
        if (t % 2 == 0) {           
                $(".ticarialt").show();    
        }
        else $(".ticarialt").hide();
        t++;
    });
    /*fiyatkampalt*/
    $(".fiyatkampanya").hover(function () {
        if (f % 2 == 0) {
            $(".fiyatkampalt").show();
        }
        else $(".fiyatkampalt").hide();
        f++;
    });

    /*satissonraalt*/
    $(".satissonra").hover(function () {
        if (f % 2 == 0) {
            $(".satissonraalt").show();
        }
        else $(".satissonraalt").hide();
        f++;
    });


});

