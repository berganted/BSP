<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div class="h_wrap">
        <div class="hr"></div>
    <div class="index_wrap">
        <div class="header_top">
            <div class="header_search">
                <form action="#">
                    <input type="search" placeholder="검색어를 입력하세요">
                </form>
                <div class="header_searchIcon">
                    <img src="/bsp/img/logo/Search.png">
                </div>
            </div>
            <div class="header_logo">
                <a href="index.html"><img src="/bsp/img/logo/indexLogo.png" alt=""></a>
            </div>
            <div class="header_login">
            <c:if test="${empty userInfo}">
                <a href="/bsp/user/login.do">로그인</a>
                <a href="/bsp/user/reg.do">회원가입</a>
                <a href="join.html">장바구니</a>                                       
                <a href="/bsp/user/mypage.do">마이페이지</a>
            </c:if>
            <c:if test="${!empty userInfo}">
				<a>${ userInfo.m_name}</a>
				<a onclick="location.href='/bsp/user/logout.do'">로그아웃</a> 
				<a href="join.html">장바구니</a>                                       
                <a href="/bsp//user/mypage.do">마이페이지</a>
			</c:if>
            </div>
        </div>
        <!-- Main-menu -->
        <div class="header_mainMenu">
            <ul>
            <li><a class="header_depth1" href="category.html">&nbsp;</a></li>
            <li><a class="header_depth1" href="category.html">카테고리</a>
                <ul class="header_depth2">
                    <li><a href="#">BSP NOW</a></li>
                    <li><a href="#">국내도서</a></li>
                    <li><a href="#">외국도서</a></li>
                    <li><a href="#">웹소설/코믹</a></li>
                    
                </ul>
            </li>
            <li><a class="header_depth1" href="category.html">국내도서</a>
                <ul class="header_depth2">
                    <li><a href="#">소설/시</a></li>
                    <li><a href="#">에세이</a></li>
                    <li><a href="#">인문</a></li>
                    <li><a href="#">역사</a></li>
                    <li><a href="#">예술</a></li>
                    <li><a href="#">종교</a></li>
                    <li><a href="#">사회</a></li>
                    <li><a href="#">과학</a></li>
                    <li><a href="#">경제 경영</a></li>
                    <li><a href="#">자기계발</a></li>
                    <li><a href="#">만화</a></li>
                    <li><a href="#">라이트노벨</a></li>
                    <li><a href="#">여행</a></li>
                    <li><a href="#">잡지</a></li>
                </ul>
            </li>    
            <li><a class="header_depth1" href="category.html">해외도서</a>
                <ul class="header_depth2">
                    <li><a href="#">ELT 사전</a></li>
                    <li><a href="#">문학 소설</a></li>
                    <li><a href="#">경제 경영</a></li>
                    <li><a href="#">인문 사회</a></li>
                    <li><a href="#">예술 대중문화</a></li>
                    <li><a href="#">취미 라이프스타일</a></li>
                    <li><a href="#">컴퓨터</a></li>
                    <li><a href="#">자연과학</a></li>
                    <li><a href="#">대학교재 전문서</a></li>
                    <li><a href="#">해외잡지</a></li>
                    <li><a href="#">유아어린이청소년</a></li>
                    <li><a href="#">캐릭터북</a></li>
                    <li><a href="#">초등코스북</a></li>
                    <li><a href="#">학습서</a></li>
                </ul>
            </li>              
            <li><a class="header_depth1" href="category.html">베스트</a>
                <ul class="header_depth2">
                    <li><a href="#">국내도서</a></li>
                    <li><a href="#">외국도서</a></li>
                    <li><a href="#">정가제 Free</a></li>
                    <li><a href="#">웹소설/코믹</a></li>
                    <li><a href="#">&nbsp;</a></li>
                    
                </ul>
            </li>
            <li><a class="header_depth1" href="category.html">신상품</a>
                <ul class="header_depth2">
                    <li><a href="#">국내도서 신간</a></li>
                    <li><a href="#">외국도서 신간</a></li>
                    
                </ul>
            </li>
            <li><a class="header_depth1" href="category.html">고객센터</a>
                <ul class="header_depth2">
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">자주 묻는 질문</a></li>
                    <li><a href="#">문의게시판</a></li>
                   
                </ul>
            </li>
            <li><a class="header_depth1" href="category.html">&nbsp;</a></li>
        </ul>
        </div>        
    </div>  
</div>  
