/*buy_form----------------------------------------------------------------------- */
    //주소 연동
    function openZipSearch() {
         new daum.Postcode({
            oncomplete: function (data) {
                $('[name=add_1]').val(data.zonecode); // 우편번호 (5자리)
                $('[name=add_2]').val(data.address);
                $('[name=add_3]').val(data.buildingName);
                }
            }).open();
    }

    //구매 수량 조절버튼
    function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find("input[name='pop_out']"); //부모부분인 td의 자식 name pop_out [수량입력값]
        var tCount = Number($input.val()); //입력값 숫자타입으로 변환
        var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html()); 
                        //입력된 수량보다 +/-가 초과되지 않도록

        if(type=='p'){
            if(tCount < tEqCount) $input.val(Number(tCount)+1);  //재고보다 작을경우 +1
        }else{
             if(tCount >0) $input.val(Number(tCount)-1);    //0보다 클 경우 -1
            }
        }

/*cart_form----------------------------------------------------------------------- */
    //**구매 수량 조절버튼
    function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find("input[name='pop_out']"); //부모부분인 td의 자식 name pop_out [수량입력값]
        var tCount = Number($input.val()); //입력값 숫자타입으로 변환
        var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html()); 
                     //입력된 수량보다 +/-가 초과되지 않도록

        if(type=='p'){
            if(tCount < tEqCount) $input.val(Number(tCount)+1);  //재고보다 작을경우 +1
        }else{
             if(tCount >0) $input.val(Number(tCount)-1);    //0보다 클 경우 -1
            }
}
    //**체크박스
    function allCheckFunc( obj ) {     
        $("[name=checkOne]").prop("checked", $(obj).prop("checked") );
        } //name=checkOne인 체크박스들을 checked상태로 변경


    function oneCheckFunc( obj ){       //체크박스 체크시 전체선택 체크 여부 

    var allObj = $("[name=checkAll]");
    var objName = $(obj).attr("name"); 


     if( $(obj).prop("checked") ){       //체크가 된 박스가 있다면

    checkBoxLength = $("[name="+ objName +"]").length;
    checkedLength = $("[name="+ objName +"]:checked").length;

        //체크박스가 있는 이름과 체크가된 이름의 길이가 같으면 true, 아니면 false로 상태변경
        if( checkBoxLength == checkedLength ) {     
            allObj.prop("checked", true);
        } else {
            allObj.prop("checked", false);
        }
    }
    else{       //하나라도 체크가 안되어있으면 전체체크박스 상태 변경
    allObj.prop("checked", false);
        }
    }
    
    $(function(){       
        $("[name=checkAll]").click(function(){ //전체 박스 누르면 체크박스들 상태 변경
            allCheckFunc( this );
        });
        $("[name=checkOne]").each(function(){  //개별 체크박스에게 oneCheckFunc함수 실행
            $(this).click(function(){
            oneCheckFunc( $(this) );
             });
        });
        $("[name=buy_del]").click(function(){   //선택된 체크박스 삭제
            if($("input:checkbox[name=checkOne]").is(":checked") == true ){
             $("[name=checkAll]").prop("checked", false );
                     var com = confirm("삭제 하시겠습니까?")
                    if(com == true){
                         $(" input[type='checkbox']:checked").parent().parent().remove();
                    }
            }else{  
                alert('1개 이상을 선택해주세요')
                return false; 
            }
        });
    });
/*return or replace_form----------------------------------------------------------------------- */
         //팝업창 띄우기
         function showPopup(){
            url = "Return popup.html" 
            popup_name = "retrn_popup"
            specs = "scrollbars=yes,resizable=no, width=500, height=611"
            window.name = "parentForm"  // →나중에 return.do등으로 변경

            window.open(url, popup_name, specs);
        }
        //라디오 버튼 기타 클릭시 textarea 출력
        function showTextarea(v, id) {
            // 라디오 버튼 value 값 조건 비교
            if (v == "4") {
                document.getElementById(id).style.display = ""; // 보여줌
            } else {
                document.getElementById(id).style.display = "none"; // 숨김
            }
        }
        //주소 연동
        function openZipSearch() {
            new daum.Postcode({
                 oncomplete: function (data) {
                    $('[name=add_1]').val(data.zonecode); // 우편번호 (5자리)
                    $('[name=add_2]').val(data.address);
                    $('[name=add_3]').val(data.buildingName);
                    }
                }).open();
            }
/*return_popup_form----------------------------------------------------------------------- */
    function info_submit(){
        opener.document.getElementById("pInput").value 
        = document.getElementById("cInput").value
   
    }
    //자동으로 팝업 창이 닫히게 하는 함수
    function popupClose(form){
        //form의 target을 부모창으로 설정함
        form.target = opener.name;
        form.submit();

        if(opener != null){
            opener.retrn_popup = null;
            self.close();
        }
    }