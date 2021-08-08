<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp"%>
    <link rel="stylesheet" href="/bsp/css/index.css">
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
    
    function isDel() {
		if (confirm('삭제하시겠습니까?')) {
			// 삭제처리
			$.ajax({
				url:'/bsp//sample/delete.do',
				data:{
					'q_no':${vo.q_no}
				},
				method:'post',
				success:function(res) {
					console.log(res);
					if (res.trim() == 'true') {
						alert('정상적으로 삭제되었습니다.');
						location.href='FAQindexAdmin.do';
					} else {
						alert('삭제 실패');
					}
				},
				error : function(res) {
					console.log(res);
				}
			});
		}
	}
    </script>
    
</head>
<body>
    <%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
    <div class="FAQboard_sub">
            <div class="FAQboard_size">
                <h3 class="sub_title">자주묻는질문 - [수정]</h3>
    
                <div class="bbs">
               <form method="post" name="frm" id="frm" action="update.do" enctype="multipart/form-data">
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
                                <input type="text" name="q_title" id="title" class="wid100" value="${vo.q_title }" style="width: 500px"/>
                                <input type="hidden" name="q_no" value="${vo.q_no }"> 
                                
                                        </td>
                                        <th scope="row"><label for="">작성자</label></th>
                                        <td colspan="">
                                        </td>
                                        <th scope="row"><label for="">등록일</label></th>
                                        <td colspan="">
                                            ${vo.q_regdate }
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="5">
                                            <textarea name="q_content" id="content" style="width:100%">${vo.q_content }</textarea>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="btn">
                                <div class="btnLeft">
                                    <a class="btns" href="FAQindexAdmin.do"><strong>목록</strong></a>
                                </div>
                                <div class="btnRight">
                                    <a class="btns" style="cursor:pointer;" href="javascript:goSave();"><strong>저장</strong></a>
                                    <a class="btns" style="cursor:pointer;" href="javascript:isDel();"><strong>삭제</strong></a>
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
</body>
</html>