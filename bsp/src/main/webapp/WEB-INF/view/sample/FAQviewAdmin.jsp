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
                <h3 class="sub_title">자주묻는질문 - [수정]</h3>
    
                <div class="bbs">
               <form method="post" name="frm" id="frm" action="update2.do" enctype="multipart/form-data">
                   <input type="hidden" name="a_id" value="${adminInfo.a_id }">
                    <div class="con">
                    <!-- 내용 : s -->
                    <div id="bbs">
                        <div id="bread">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리 기본내용입니다.">
                                <colgroup>
                                    <col width="10%" />
                                    <col width="20%" />
                                    <col width="10%" />
                                    <col width="15%" />
                                    <col width="25%" />
                                    <col width="25%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><label for="">제목</label></th>
                                        <td>
                                <input type="text" name="faq_title" id="title" class="wid100" value="${vo.faq_title }" style="width: 500px"/>
                                <select name="faq_cate" id="faq_cate">
                                <c:if test="${vo.faq_cate =='주문'  }">
                                                <option value="주문" selected="selected">주문</option>
                                                <option value="배송">배송</option>
                                                <option value="취소/교환/반품">취소/교환/반품</option>
                                                <option value="회원">회원</option>
                                 </c:if>
                                  <c:if test="${vo.faq_cate =='배송'  }">
                                                <option value="주문" >주문</option>
                                                <option value="배송" selected="selected">배송</option>
                                                <option value="취소/교환/반품">취소/교환/반품</option>
                                                <option value="회원">회원</option>
                                 </c:if>
                                  <c:if test="${vo.faq_cate =='취소/교환/반품'  }">
                                                <option value="주문" >주문</option>
                                                <option value="배송">배송</option>
                                                <option value="취소/교환/반품" selected="selected">취소/교환/반품</option>
                                                <option value="회원">회원</option>
                                 </c:if>
                                  <c:if test="${vo.faq_cate =='회원'  }">
                                                <option value="주문" >주문</option>
                                                <option value="배송">배송</option>
                                                <option value="취소/교환/반품">취소/교환/반품</option>
                                                <option value="회원" selected="selected">회원</option>
                                 </c:if>
                                            </select>
                                        </td>
                                        <th scope="row"><label for="">작성자</label></th>
                                        <td colspan="">
                                            ${vo.a_id }
                                        </td>
                                        <th scope="row"><label for="">등록일</label></th>
                                        <td colspan="">
                                            ${vo.faq_regdate }
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="5">
                                            <textarea name="faq_content" id="content" style="width:100%">${vo.faq_content }</textarea>
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