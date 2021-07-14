// $(function(){
//     $(".header_mainMenu > li").mouseover(function(){
//         $(this).find('.header_depth2').stop().slideDown(300);
//     }) .mouseleave(function(){
//          $(this).find('.header_depth2').stop().slideUp(300);
//     });
// });

$(function(){ 
    $("#header").load("header.html");  
    $("#footer").load("footer.html"); 
    $("#side").load("sideCategory.html");   
    $("#quick").load("quick.html");   
    
    $(".header_mainMenu > ul > li >ul").hide
        
 $(".header_mainMenu >ul> li").mouseover(function(){
    console.log(1)
     $(this).find('.header_depth2').stop().slideDown(10)
 });  
 $(".header_mainMenu >ul> li").mouseleave(function(){
    $(this).find('.header_depth2').stop().slideUp(10)
 });
 
    var swiper = new Swiper(".mySwiper", {
        loop:true,
        autoplay:{delay:3000},           
        navigation: {
             nextEl: ".swiper-button-next",
             prevEl: ".swiper-button-prev",
         },
     });

     $(".index_board_title").click(function(){
        $('.index_board_title').removeClass('on');
        $(this).addClass('on');         
        if($(this).text()=='베스트셀러') {
            $('#index_board_notice').show();
            $('#index_board_data').hide();
        } else {
            $('#index_board_notice').hide();
            $('#index_board_data').show();
        }
     });


     console.log($('.mySwiper ').position().left)
    var q_left = $('.mySwiper ').position().left+1500;
    var q_top = $('.mySwiper').position().top;
    $(".mypage_ad").css({
        'top':q_top+230,
        'left':q_left
    });

 $(window).scroll(function(){
     console.log($(window).scrollTop());
     var new_top = $(window).scrollTop()+230;
     $(".mypage_ad").stop().animate({
     'top':new_top, 'left':q_left
     
 },300);
 })

 $(".support_total").click(function(){
    $(".support_totalDetail").show();
    $(".support_orderDetail").show();
    $(".support_shippingDetail").show();
    $(".support_cancelDetail").show();
    $(".support_memberDetail").show();
});
 
 $(".support_order").click(function(){
    $(".support_orderDetail").show();
    $(".support_totalDetail").hide();
     $(".support_shippingDetail").hide();
     $(".support_cancelDetail").hide();
     $(".support_memberDetail").hide();
 });

 $(".support_shipping").click(function(){
    $(".support_shippingDetail").show();
    $(".support_totalDetail").hide();
    $(".support_orderDetail").hide();
    $(".support_cancelDetail").hide();
    $(".support_memberDetail").hide();
});
$(".support_cancel").click(function(){
    $(".support_cancelDetail").show();
    $(".support_totalDetail").hide();
    $(".support_orderDetail").hide();
    $(".support_shippingDetail").hide();
    $(".support_memberDetail").hide();
});
$(".support_member").click(function(){
    $(".support_memberDetail").show();
    $(".support_orderDetail").hide();
    $(".support_cancelDetail").hide();
    $(".support_shippingDetail").hide();
    $(".support_totalDetail").show();
   
});

//  support_t2 클래스 내임 따로 주기 
// 클래스명 얼추 정리하기 

$(".support_t2").hide();
$(".support_t").click(function(){
    $(this).parent().parent().find('.support_t2').slideToggle(10)
});

}); 

 


