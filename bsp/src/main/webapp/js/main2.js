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