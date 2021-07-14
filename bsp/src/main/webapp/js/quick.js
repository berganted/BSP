 //console.log($('.menu').position().left)
 var q_left = $('.mem_content').position().left+1360;
    
 var q_top = $('.mem_content').position().top;

 // $(".mypage_ad").css({
 //     'top':'137px',
 //     'left':'1720px'
 // });
 
 $(window).scroll(function(){
     console.log($(window).scrollTop());
     var new_top = $(window).scrollTop()+137;
     $(".mypage_ad").stop().animate({
     'top':new_top
     
 },300);
 })
