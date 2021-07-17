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
console.log($('.index_visual').position().left);
	    var q_left = $('.index_visual').position().left+1550;
	    
	    var q_top = $('.index_visual').position().top;
	    console.log($('.index_visual').position().q_left)
	   
	    $(".mypage_ad").css({
	        'top':q_top,
	        'left':q_left
	    });
	    
	    $(window).scroll(function(){
	        
	        var new_top = $(window).scrollTop()+300;
	        $(".mypage_ad").stop().animate({
	        'top':new_top, 'left':q_left
	        
	    },300);
	    })

}); 
 
function setEditor(holder){
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: holder,
		sSkinURI: "/project/smarteditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			fOnBeforeUnload : function(){
				//alert("아싸!");	
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["contents"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	return oEditors;
} 


