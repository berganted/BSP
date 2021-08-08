<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="/bsp/smarteditor/js/HuskyEZCreator.js"></script>
    <script src="/bsp/js/index.js"></script>
    
<script>
    function goSave() {
        oEditors.getById['content'].exec("UPDATE_CONTENTS_FIELD", []); 
        $("#frm").submit();
    }
    var oEditors;
    $(function(){
        oEditors = setEditor("content"); // 반드시 id를 적어야한다
    });

</script>
</head>
<body> 
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		<!-- S T A R T :: containerArea-->
		<div class="FAQboard_sub">
            <div class="FAQboard_size">
                <h3 class="sub_title">자주묻는질문 - [수정]</h3>
    
                <div class="bbs">
               <form method="post" name="frm" id="frm" action="insertReply.do" enctype="multipart/form-data">
                   <input type="hidden" name="a_id" value="${adminInfo.a_id }">
                    <div class="con">
                    <!-- 내용 : s -->
                    <div id="bbs">
                        <div id="bread">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
                                <colgroup>
                                    <col width="10%" />
                                    <col width="15%" />
                                    <col width="10%" />
                                    <col width="15%" />
                                    <col width="25%" />
                                    <col width="25%" />
                                </colgroup>
                                
                                <tbody>
                                    <tr>
                                        <th scope="row"><label for="">제목</label></th>
                                        <td>
                                <input type="text" name="q_title" id="title" class="wid100"  style="width: 500px"/>
                                <input type="hidden" name="q_gno" value="${q_gno }"> 
                				<input type="hidden" name="q_ono" value="${q_ono }">
                				<input type="hidden" name="q_nested" value="${q_nested }">
                                
                                        </td>
                                        <th scope="row"><label for="">작성자</label></th>
                                        <td colspan="">
                                        </td>
                                        <th scope="row"><label for="">등록일</label></th>
                                        <td colspan="">
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="5">
                                            <textarea name="q_content" id="content" style="width:100%"></textarea>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="btn">
                                <div class="btnLeft">
                                    <a class="btns" href="index.do"><strong>목록</strong></a>
                                </div>
                                <div class="btnRight">
                                    <a class="btns" style="cursor:pointer;" href="javascript:goSave();"><strong>저장</strong></a>
                                </div>
                            </div>
                            <!--//btn-->
                        </div>
                        <!-- //bread -->
                        
                    </div>
                    <!-- //bbs --> 
                    <!-- 내용 : e -->
                </div>
                    </form>
                </div>
            </div>
        </div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>