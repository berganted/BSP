<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>

</script>
<link rel="stylesheet" href="css/quick.css">
<aside class="mypage_ad">
    <div class="mypage_ad_name"><p>최근본상품</p></div>
    <c:if test="${quick == null }"> 최근본상품이 없습니다.</c:if>
    <c:if test="${quick != null }">
    <div class="img_area">
        <img src="/bsp/img/${quick.b_imgmain }" width="70px" height="100px" style="cursor: pointer;"
        onclick="location.href='/bsp/book/Book_detail.do?b_no=${quick.b_no}&b_ctgno2key=${quick.b_ctgno2key}&b_ctgdetail=&b_ctgno1=${quick.b_ctgno1 }'">
    </div>
    <div style="text-align: center;">
        ${quick.b_title}
    </div>
    </c:if>
</aside>    