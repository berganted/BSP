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


function groupDel() {
if($('#admin').val()==1){
	var cnt = 0;
	for(var i=0; i<$('input[name=ad_no]').length;i++){
		if($('input[name=ad_no]').eq(i).prop('checked')){
			cnt++;
			break;
			}
		}
		if( cnt == 0 ){
		('하나 이상 체크해 주세요');
		}else{
			if(confirm('삭제하시겠습니까?')){
			$('#frm').submit();
			}
		}
	}else{
		alert('상위 관리자에게 문의하세요');
	}
}
function selectAll(selectAll)  {
  const checkboxes 
     = document.getElementsByName('no');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
  })
}
function checkSelectAll()  {
  // 전체 체크박스
  const checkboxes 
    = document.querySelectorAll('input[name="nos"]');
  // 선택된 체크박스
  const checked 
    = document.querySelectorAll('input[name="nos"]:checked');
  // select all 체크박스
  const selectAll 
    = document.querySelector('input[name="allChk"]');
  
  if(checkboxes.length === checked.length)  {
    selectAll.checked = true;
  }else {
    selectAll.checked = false;
  }

}



