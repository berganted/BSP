<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">
    <meta name="format-detection" content="telephone=no, address=no, email=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>게시판목록</title>

    <script>
    function move() { /* 결과가 다름 하 이해안가 */
    	
	     <c:if test="${!empty userInfo}">
//	    	location.href='write.do';
	    	location.href="write.do";
	    </c:if>	
	    <c:if test="${empty userInfo}">
		alert('로그인 후 사용가능합니다.');
			/* location.href="/pro/user/login.do" */
		</c:if>	
    }
    </script>
</head>
<body>
    <div class="wrap">

        <div class="sub">
            <div class="size">
                <h3 class="sub_title">게시판</h3>
    
                <div class="bbs">
                    <table class="list">
                    <p><span><strong>총 ${BookVo.totCount }개</strong>  |  ${BookVo.reqPage}/${BookVo.totPage }페이지</span></p>
                        <caption>게시판 목록</caption>
                        <colgroup>
                            <col width="80px" />
                            <col width="*" />
                            <col width="100px" />
                            <col width="200px" />
                            <col width="80px" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>책번호</th>
                                <th>책제목</th>
                                <th>책내용</th>
                                <th>책소개</th>
                                <th>isbn</th>
                            </tr>
                        </thead>
                        <tbody>
						<c:if test="${empty list }">
                            <tr>
                                <td class="first" colspan="5">등록된 글이 없습니다.</td>
                            </tr>
                        </c:if>
                        <c:forEach var="vo" items="${list }">     
                            <tr>
                                <td>${vo.b_no }</td>
                                <td class="txt_l">
                                    <a href="detail.do?b_no=${vo.b_no }&reqPage=${BookVo.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">${vo.b_title }</a>
                                </td>
                                <td class="writer">
                                    ${vo.b_content }
                                </td>
                                <td class="date">${vo.b_introbook }</td>
                                <td>${vo.b_isbn }</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                        <a class="btn" href="javascript:move();">글작성 </a>
                    </div>
                    <div class="pagenate clear">
                        <ul class='paging'>
                        <c:if test="${BookVo.startPage > BookVo.pageRange}">
                        	<li><a href="index.do?reqPage=${BookVo.startPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${BookVo.startPage}" end="${BookVo.endPage }">
                            <li><a href='index.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==BookVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${BookVo.totPage > BookVo.endPage}">
                        	<li><a href="index.do?reqPage=${BookVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
                
                    <!-- 페이지처리 -->
                    <div class="bbsSearch">
                        <form method="get" name="searchForm" id="searchForm" action="">
                            <span class="srchSelect">
                                <select id="orderby" name="orderby" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="regdate" <c:if test="${param.orderby=='regdate'}">selected</c:if>>작성일</option>
                                    <option value="readcount" <c:if test="${param.orderby=='readcount'}">selected</c:if>>조회수</option>
                                </select>
                                <select id="direct" name="direct" class="dSelect" title="검색분류 선택" onchange="$('#searchForm').submit();">
                                    <option value="DESC" <c:if test="${param.direct=='DESC'}">selected</c:if>>내림차순</option>
                                    <option value="ASC" <c:if test="${param.direct=='ASC'}">selected</c:if>>오름차순</option>
                                </select>
                                <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                                    <option value="all">전체</option>
                                    <option value="title" <c:if test="${param.stype=='title'}">selected</c:if>>제목</option>
                                    <option value="content" <c:if test="${param.stype=='content'}">selected</c:if>>내용</option>
                                </select>
                            </span>
                            <span class="searchWord">
                                <input type="text" id="sval" name="sval" value="${param.sval }"  title="검색어 입력">
                                <input type="button" id="" value="검색" title="검색" onclick="$('#searchForm').submit();">
                            </span>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>
</html>