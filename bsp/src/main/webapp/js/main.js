$(function(){ 
    $("#header").load("header.html");  
    $("#footer").load("footer.html"); 
    $("#side").load("sideCategory.html");   
    $("#quick").load("quick.html");

    $('.radio_pwd').click(function(){
        console.log(1);
        $('.find_id').css('display','none') ;  
        $('.find_pwd').css('display','block')   ;
        
    })
    $('.radio_id').click(function(){
        console.log(1);
        $('.find_pwd').css('display','none') ;  
        $('.find_id').css('display','block')   ;
        
    });
      
    console.log($('.mem_content').position().left)
    var q_left = $('.mem_content').position().left+1335;
    
    var q_top = $('.mem_content').position().top;
    console.log($('.mem_content').position().q_left)
   
    $(".mypage_ad").css({
        'top':q_top,
        'left':q_left
    });
    
    $(window).scroll(function(){
        
        var new_top = $(window).scrollTop()+100;
        $(".mypage_ad").stop().animate({
        'top':new_top, 'left':q_left
        
    },300);
    })

    $('.del_why ').change(function(){
       
        if($(this).val() == 'mass' ){
            $('.hidden').show();  
        } else{
            $('.hidden').hide();  
        }           
    })
    $('.up_spancon_t > select').change(function(){
        var msg = $(this).val();
        $('#emailv').val(msg);
        if(msg ==""){
            $('#emailv').show();
        }else{
            $('#emailv').hide();
        }
        })   
 
  
    
  }); 
  function ShowCurrentTime() {
    $.ajax({
        async: false,
        type: "POST",
        url: "Default.aspx/GetCurrentTime",
        data: '{name: "Mudassar" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        }
    });
   
}