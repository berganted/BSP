$(function(){ 
    $(".header_mainMenu > ul > li >ul").hide
        
 $(".header_mainMenu >ul> li").mouseover(function(){
    console.log(1)
     $(this).find('.header_depth2').stop().slideDown(10)
 });  
 $(".header_mainMenu >ul> li").mouseleave(function(){
    $(this).find('.header_depth2').stop().slideUp(10)
 });
}); 



