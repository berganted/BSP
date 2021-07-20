<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/bsp/css/index.css">
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/index.js"></script>
	<script>
    function reply() {
    	<c:if test="${!empty userInfo}">
    	location.href='board.do?q_no=${vo.q_no}';
    	</c:if>
    	<c:if test="${empty userInfo}">
    	alert('로그인 후 사용가능합니다.');
    	</c:if>
    }
    </script>
</head>
<body>
    <%@ include file="/WEB-INF/view/include/header.jsp" %>
    <div class="FAQboard_sub">
            <div class="FAQboard_size">
                <h3 class="sub_title">게시판</h3>
                <div class="bbs">
                    <div class="FAQboard_view">
                        <div class="FAQboard_title">
                            <dl>
                                <dt>${vo.q_title }</dt>
                                <dd class="date">작성일 : ${vo.q_regdate } </dd>
                            </dl>
                        </div>
                        <div class="cont">${vo.q_content } </div>
                        <%-- <dl class="file">
                            <dt>첨부파일 </dt>
                            <dd>
                            <a href="/bsp/common/download.jsp?path=/upload/&org=${vo.q_filename_org}&real=${vo.q_filename_real}" 
                            target="_blank">${vo.q_filename_org }</a></dd>
                        </dl> --%>
                                    
                        <div class="btnSet clear">
                            <div class="fl_l"><a href="FAQboard.do?<c:if test="${!empty param.reqPage}">reqPage=${param.reqPage}</c:if>&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}" class="btn">목록으로</a></div>
                            <div class="fl_l"><a class="btn" href="javascript:reply();">답변 </a></div>
                            <c:if test="${userInfo.m_no == vo.m_no }">
                            <div class="fl_l"><a href="board_edit.do?q_no=${vo.q_no}" class="btn">수정</a></div>
                            <div class="fl_l"><a href="javascript:isDel();" class="btn">삭제</a></div>
                        	</c:if>
                        </div>
                    <table class="board_write">
	                	<colgroup>
	                            <col width="*" />
	                            <col width="80px" />
	                        </colgroup>
                        <tbody>
                        <tr>
                            <td>
                                <textarea name="c_content" id="content" style="width:100%; height:80px"></textarea>
                            </td>
                            <td>
                            	 <div class="btnSet"  style="text-align:right;">
                       				 <a class="btn" href="javascript:goSave();">저장 </a>
                   				 </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <script>
                    	function goSave() {
                    		<c:if test="${!empty userInfo}">
                    		if ($("#content").val().trim()==''){
                    			alert('내용을 입력해 주세요');
                    		} else {
                    			if (confirm('댓글을 등록하시겠습니까?')) {
                    				$.ajax({
                            			url:'/bsp/comment/insert.do',
                            			data:{
          	                  				c_content:$("#content").val(),
          	                  				q_no:${vo.q_no},
          	                  				m_no:${userInfo.m_no}
                            			},
                            			success:function(res) {
                            				if (res.trim()=='true') {
                            					alert('댓글이 등록되었습니다.');
                            					$("#content").val("");
                            					getComment();
                            				} else {
                            					alert('댓글 등록 실패');
                            				}
                            			}
                            		});
                    			}
                    		}
                    		</c:if>
                    		<c:if test="${empty userInfo}">
                    			alert('댓글은 로그인 후 등록 가능합니다.');
                    		</c:if>
                    	}
                    	 $(function(){
                    		 getComment();
                 	    });
                    	function getComment(reqPage) {
                    		$.ajax({
                    			url:'/bsp/comment/list.do',
                    			data:{
                    				q_no:${vo.q_no}, 
                    				reqPage:reqPage
                    			}, 
                    			success:function(res) {
                    				$("#commentArea").html(res);
                    			}
                    		})
                    	}
                    	function commentDel(no) {
                    		if (confirm('댓글을 삭제하시겠습니까?')) {
	                    		$.ajax({
	                    			url:'/bsp/comment/delete.do',
	                    			data:{
	                    				c_no:no
	                    			},
	                    			success:function(res) {
	                    				if (res.trim()=='true') {
		                    				alert('댓글이 삭제되었습니다.');
		                    				getComment(1);
	                    				} else {
	                    					alert('댓글 삭제 오류');
	                    				}
	                    			}
	                    		});
                    		}
                    	}
                    </script>
                    </div>
                    <div id="commentArea"></div>          	
                    </div>
                </div>
            </div>
        <%@ include file="/WEB-INF/view/include/footer.jsp" %>
    <script>
    	function isDel() {
    		if (confirm('삭제하시겠습니까?')) {
    			// 삭제처리
    			$.ajax({
    				url:'delete.do',
    				data:{
    					'q_no':${vo.q_no}
    				},
    				method:'post',
    				success:function(res) {
    					console.log(res);
    					if (res.trim() == 'true') {
    						alert('정상적으로 삭제되었습니다.');
    						location.href='FAQboard.do';
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
</body>
</html>