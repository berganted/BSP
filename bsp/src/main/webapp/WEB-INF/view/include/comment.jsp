<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
				<table class="list">
                    <p><span><strong>�� ${commentVo.totCount }��</strong>  |  ${commentVo.reqPage}/${commentVo.totPage }������</span></p>
                        <caption>�Խ��� ���</caption>
                        <colgroup>
                            <col width="*" />
                            <col width="100px" />
                            <col width="100px" />
                        </colgroup>
                        <tbody>
						<c:if test="${empty list }">
                            <tr>
                                <td class="first" colspan="5">��ϵ� ����� �����ϴ�.</td>
                            </tr>
                        </c:if>
                        <c:forEach var="vo" items="${list }">     
                            <tr>
                                <td class="txt_l">
                                	${vo.c_content}
                                	<c:if test="${userInfo.m_no == vo.m_no}">
                                    <a href="javascript:commentDel(${vo.c_no});">[X]</a>
                                    </c:if>
                                </td>
                                <td class="writer">
                                    ${vo.name }
                                </td>
                                <td class="date"><fmt:formatDate value="${vo.c_regdate }" pattern="yyyy-MM-dd"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="pagenate clear">
                        <ul class='paging'>
                        <c:if test="${commentVo.strPage > commentVo.pageRange}">
                        	<li><a href="javascript:getComment(${commentVo.strPage-1 })"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${commentVo.strPage}" end="${commentVo.endPage }">
                            <li><a href='javascript:getComment(${rp})' <c:if test="${rp==commentVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${commentVo.totPage > commentVo.endPage}">
                        	<li><a href="javascript:getComment(${commentVo.endPage+1 })">></a></li>
                        </c:if>
                        </ul> 
                    </div>