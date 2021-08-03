<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

				<table class="list">
                    <p><span><strong>총 ${reviewVo.totCount }개</strong>  |  ${reviewVo.reqPage}/${reviewVo.totPage }페이지</span></p>
                        <caption>게시판 목록</caption>
                        <colgroup>
                            <col width="*" />
                            <col width="100px" />
                            <col width="100px" />
                            <col width="100px" />
                        </colgroup>
                        <tbody>
						<c:if test="${empty list }">
                            <tr>
                                <td class="first" colspan="5">등록된 리뷰가 없습니다.</td>
                            </tr>
                        </c:if>
                        <c:forEach var="vo" items="${list }">     
                            <tr>
                                <td class="txt_l">
                                	${vo.r_content}
                                	<c:if test="${userInfo.m_no == vo.m_no}">
                                    <a href="javascript:commentDel(${vo.r_no});">[X]</a>
                                    </c:if>
                                </td>
                                <td class="writer">
                                    ${vo.name }  
                                </td>
                                <td class="writer">
                                    ${vo.r_grade }  점
                                </td>
                                <td class="date"><fmt:formatDate value="${vo.r_regdate }" pattern="yyyy-MM-dd"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="pagenate clear">
                        <ul class='paging' style=" margin-left: 480px;  text-align: center; float: left;">
                        <c:if test="${reviewVo.strPage > reviewVo.pageRange}">
                        	<li><a href="javascript:getComment(${reviewVo.strPage-1 })"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${reviewVo.strPage}" end="${reviewVo.endPage }">
                            <li><a href='javascript:getComment(${rp})' <c:if test="${rp==reviewVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${reviewVo.totPage > reviewVo.endPage}">
                        	<li><a href="javascript:getComment(${reviewVo.endPage+1 })">></a></li>
                        </c:if>
                        </ul> 
                    </div>