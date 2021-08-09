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
    </script>
    
</head>
<body>
    <%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
    <div class="FAQboard_sub">
            <div class="FAQboard_size">
                <h3 class="sub_title">자주묻는질문 - [쓰기]</h3>
    
                <div class="bbs">
               <form method="post" name="frm" id="frm" action="insert2.do" enctype="multipart/form-data">
               	<input type="hidden" name="a_id" value="${adminInfo.a_id }">
                    <table class="board_write">
                        <tbody>
                        <tr>
                            <th>제목</th> 
                            <td>
                                <input type="text" name="faq_title" id="title" class="wid100" value="" style="width: 500px"/>
                                <select name="faq_cate" id="faq_cate">
											    <option value="주문">주문</option>
											    <option value="배송">배송</option>
											    <option value="취소/교환/반품" selected="selected">취소/교환/반품</option>
											    <option value="회원">회원</option>
											</select>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="faq_content" id="content" style="width:100%"></textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                        <a class="FAQboard_btn" href="javascript:goSave();">저장 </a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>