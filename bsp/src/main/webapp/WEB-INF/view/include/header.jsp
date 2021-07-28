<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="h_wrap">
	<div class="hr"></div>
	<div class="index_wrap">
		<div class="header_top">
			<div class="header_search">
				<form action="/bsp/sample/index_search.do">
					<input type="search" placeholder="검색어를 입력하세요">
				</form>
				<div class="header_searchIcon">
					<img src="/bsp/img/logo/Search.png">
				</div>
			</div>
			<div class="header_logo">
				<a href="/bsp/sample/index.do"><img
					src="/bsp/img/logo/indexLogo.png" alt=""></a>
			</div>
			<div class="header_login">
				<c:if test="${empty userInfo}">
					<a href="/bsp/user/login.do">로그인</a>
					<a href="/bsp/user/reg.do">회원가입</a>
					<a href="/bsp/order/cart.do">장바구니</a>
					<a href="/bsp/user/mypage.do">마이페이지</a>
				</c:if>
				<c:if test="${!empty userInfo}">
					<a>${ userInfo.m_name}</a>
					<a onclick="location.href='/bsp/user/logout.do'">로그아웃</a>
					<a href="/bsp/order/cart.do">장바구니</a>
					<a href="/bsp/user/mypage.do">마이페이지</a>
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

					</ul></li>
				<li><a class="header_depth1" href="Book_KbigIdx.do">국내도서</a>
					<ul class="header_depth2">
						<li><a href="/bsp/book/Book_KbigIdx.do">가정살림</a></li>
						<li><a href="/bsp/book/Book_KbigIdx1.do">경제 경영</a></li>
						<li><a href="/bsp/book/Book_KbigIdx2.do">소설</a></li>
						<li><a href="/bsp/book/Book_KbigIdx3.do">에세이</a></li>
						<li><a href="/bsp/book/Book_KbigIdx4.do">여행</a></li>
						<li><a href="/bsp/book/Book_KbigIdx5.do">인문</a></li>
						<li><a href="/bsp/book/Book_KbigIdx6.do">자기계발</a></li>
						<li><a href="/bsp/book/Book_KbigIdx7.do">IT모바일</a></li>


					</ul></li>
				<li><a class="header_depth1" href="category.html">외국도서</a>
					<ul class="header_depth2">
						<li><a href="/bsp/book/Book_KbigIdx.do">가정살림</a></li>
						<li><a href="/bsp/book/Book_KbigIdx1.do">경제 경영</a></li>
						<li><a href="/bsp/book/Book_KbigIdx2.do">소설</a></li>
						<li><a href="/bsp/book/Book_KbigIdx3.do">에세이</a></li>
						<li><a href="/bsp/book/Book_KbigIdx4.do">여행</a></li>
						<li><a href="/bsp/book/Book_KbigIdx5.do">인문</a></li>
						<li><a href="/bsp/book/Book_KbigIdx6.do">자기계발</a></li>
						<li><a href="/bsp/book/Book_KbigIdx7.do">IT모바일</a></li>
					</ul></li>
				<li><a class="header_depth1" href="category.html">베스트</a>
					<ul class="header_depth2">
						<li><a href="#">국내도서</a></li>
						<li><a href="#">외국도서</a></li>
						<li><a href="#">정가제 Free</a></li>
						<li><a href="#">웹소설/코믹</a></li>
						<li><a href="#">&nbsp;</a></li>

					</ul></li>
				<li><a class="header_depth1" href="category.html">신상품</a>
					<ul class="header_depth2">
						<li><a href="#">국내도서 신간</a></li>
						<li><a href="#">외국도서 신간</a></li>

					</ul></li>
				<li><a class="header_depth1" href="/bsp/sample/FAQboard.do">고객센터</a></li>
				<li><a class="header_depth1" href="#">&nbsp;</a></li>
			</ul>
		</div>
	</div>
</div>
