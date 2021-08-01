<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/big.css">
    <!-- <link rel="stylesheet" href="/bsp/css/index.css"> -->
    <link rel="stylesheet" href="/bsp/css/edge.css">
 
    
    <!-- 추가하면 css구조 깨짐. div class="wrap"으로 안감싸져있어서 그런듯? 근데 감싸면 페이징 부분이 깨짐 -->
    <script src="/bsp/js/main.js"></script>
    <script src="/bsp/js/big.js"></script>
    <title>국내도서</title>
 

    <script>
    function sendPageRow() {
    	location.href='Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=${bookVo.orderby}&direct=${bookVo.direct}&pageRow='+$("#divnum").val();
    }
    </script>


</head>
<body>
 <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
       <jsp:include page="../include/sideKbig.jsp"></jsp:include>
            
         

        <div class="mem_content">
            <h2 class="main_top"> ${param.b_ctgdetail }</h2>   
 
            <div class="indexWrap">
                <div class="indexPlace">
                    <span class="original"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=${bookVo.orderby}&direct=ASC&pageRow=${param.pageRow}">기본순</a></span>
                    <span class="sell"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_intodate&direct=desc&pageRow=${param.pageRow}">판매량순</a></span>
                    <span class="new"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_intodate&direct=desc&pageRow=${param.pageRow}">신상품순</a></span>
                    <span class="lowPrice"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_price&direct=ASC&pageRow=${param.pageRow}">최저가순</a></span>
                    <span class="highPrice"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_price&direct=DESC&pageRow=${param.pageRow}	">최고가순</a></span>
                    
                    
                   <!-- 강사님한테 물어보기!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                     <!-- <form method="get" name="searchForm" id="searchForm" action=""> --> 
                     <div class="divPlace">
                        <select name="pageRow" id="divnum" onchange="sendPageRow();">
                            <option value ="1" <c:if test="${bookVo.pageRow==1}"> selected</c:if>>1개씩 보기</option>
                            <option value ="5" <c:if test="${bookVo.pageRow==5}"> selected</c:if>>5개씩 보기</option>
                            <option value ="10" <c:if test="${bookVo.pageRow==10}"> selected</c:if>>10개씩 보기</option>
                            <option value ="15" <c:if test="${bookVo.pageRow==15}"> selected</c:if>>15개씩 보기</option> 
                        </select> 
                 <!--           <input type='checkbox' name='bestcheck'  onclick='selectAll(this)'/> 전체선택 -->
                           
                            
                    </div>
                    <!-- </form>  -->
                    
                    <br>
                    <br>
                    <hr>
                 <!-- 페이지처리  -->                      
                    <div class="pagenate clear" style="text-align: center;">
                        <ul class='paging'> 
                        <c:if test="${bookVo.strPage > bookVo.pageRange}">
                         <!-- Book_KsmallIdx.do?b_ctgno2key=1&b_ctgdetail=임신/출산&b_ctgno1=1 -->
                        <li><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.strPage-1 }&orderby=${bookVo.orderby}&direct=${param.direct}&pageRow=${param.pageRow}"> < </a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${bookVo.strPage}" end="${bookVo.endPage }">
                            <li><a href='Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${rp}&orderby=${bookVo.orderby}&direct=${param.direct}&pageRow=${param.pageRow}' <c:if test="${rp==bookVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${bookVo.totPage > bookVo.endPage}">
                        	<li><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.endPage+1 }&orderby=${bookVo.orderby}&direct=${param.direct}&pageRow=${param.pageRow}"> > </a></li>
                        </c:if>
                        </ul> 
                    </div>
                </div>
            </div>
            <!-- 1 -->
            <c:forEach var = "vo" items="${list }">
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="s_bookImg"><a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}"><img src = "/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }", title="${vo.b_title }" style="height: 250px; width: 180px;"></a></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}"><b>${vo.b_title }</b></a>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">${vo.b_author } <span class="s_bookPub"> | ${vo.b_publisher }</span><span class="s_bookDate"> | <fmt:formatDate value="${vo.b_intodate}" pattern="yyyy년 MM월" /></span> </span>
                        <span class="s_price"><b>${vo.b_price }</b>원  &nbsp; 적립금 : ${vo.b_point }P</span>
                        <span class="s_grade" style="font-size: 16px;">회원리뷰(8건) ★★★★★ 9.3</span>
                        																																										
                        <span class="s_story" style="font-size: 16px; overflow: hidden; width:100% height:100%">
                        ${vo.b_content } <br>
         
                        </span>
                    </div>
                </div>
                <div class="s_payWrap">
                    <div class="s_pay">
                        <div class="s_pay1">
                           <!--  <input type="checkbox" name="bestcheck" > -->
                            &nbsp;
                          
                           
                                <div class="number">
                                    <button  class="button_s" type ="button" id="decreaseQuantity">-</button> 
                                    <input type="number" id="numberUpDown"  style="width: 50px; text-align: center;" value="1">
                                      <button class="button_s" type="button" id="increaseQuantity">+</button>
                                  </div> 
                                      
                        
                        </div>
                        <div class="s_pay2">
                            <input type="button" class="btn1" value="카트에 넣기" onClick="location.href='http://www.daum.net'" >
                        </div>
                        <div class="s_pay3">
                            <input type="button"  class="btn2" value="바로구매" onClick="location.href='http://www.daum.net'">
                        </div>
                    </div>
                </div>
             </div>
             </c:forEach>
            




          
        
             
         <aside class="mypage_ad">
            <div class="mypage_ad_name"><p>최근본상품</p></div>
            <div class="img_area">
                <img src="/bsp/img/newEye1.jpg" width="70px" height="100px">
            </div>
            <div style="text-align: center;">
                책이름
            </div>
        </aside> 
    </div>
    </div> 
   
     <jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>