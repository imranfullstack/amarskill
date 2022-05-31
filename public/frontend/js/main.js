$(document).ready(function(){
//    header-style 
    $(window).on('scroll',function() {    
       var scroll = $(window).scrollTop();
       if (scroll < 10) {
        $(".header-aria").removeClass("sticky");
       }else{
        $(".header-aria").addClass("sticky");
       }
     });
    
    





  $('.mainbanner').owlCarousel({
        margin:0,
        responsiveClass:true,
        autoplayTimeout:20000,
        autoplay:true,
        loop:true,
        navText:['<i class="fa fa-chevron-left">','<i class="fa fa-chevron-right">'],
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:1,
                nav:false
            },
            1000:{
                items:1,
                nav:true,
                loop:false
            },
            5000:{
                items:1,
                nav:true,
                loop:false
            }
        }
    });


  $('.active-course-slide').owlCarousel({
        margin:20,
        responsiveClass:true,
        autoplay:false,
        loop:true,
        navText:['<i class="fa fa-chevron-left">','<i class="fa fa-chevron-right">'],
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:1,
                nav:false
            },
            1000:{
                items:4,
                nav:true,
                loop:false
            },
            5000:{
                items:4,
                nav:true,
                loop:false
            }
        }
    });




            $(function () {
              var top = $('#sidebar').offset().top - parseFloat($('#sidebar').css('marginTop').replace(/auto/, 0));
              var footTop = $('#footer').offset().top - parseFloat($('#footer').css('marginTop').replace(/auto/, 0));

              var maxY = footTop - $('#sidebar').outerHeight();

              $(window).scroll(function (evt) {
                var y = $(this).scrollTop();
                if (y > top) {

                  //Quand scroll, ajoute une classe ".fixed" et supprime le Css existant 
                  if (y < maxY) {
                    $('#sidebar').addClass('fixed').removeAttr('style');
                  } else {

                    //Quand la sidebar arrive au footer, supprime la classe "fixed" précèdement ajouté
                    $('#sidebar').removeClass('fixed').css({
                      position: 'absolute',
                      top: maxY - top + 'px' });

                  }
                } else {
                  $('#sidebar').removeClass('fixed');
                }
              });
            });
            //# sourceURL=pen.js

});