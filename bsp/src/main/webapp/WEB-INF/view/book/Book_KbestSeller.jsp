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
    <link rel="stylesheet" href="/bsp/css/index.css">
    <script src="/bsp/js/main.js"></script>
    <script src="/bsp/js/big.js"></script>
    <title>국내베스트셀러</title>

    <style>
    
    
    
    #all{
        width: 100px; 
        height: 30px; 
        float : right; 
        margin-right: 150px;
        margin-top: -9px;
    
    }
    #divnum{
        width:100px;
        height:40px; 
        font-size: 13px;
        margin-top: 7px;
    position : absolute;
    top:auto;
    left:1160px;
        
    }

 
  .best_indexWrap{    
   border: 1px solid gray;
   width: 1000px;
   height: 70px;
   margin: auto;
   margin-top: 20px;
   
   text-align: left;
   border-radius: 30px;

   
}
.indexPlace{
   margin: 20px 10px;
   width: 98%;
   text-align: center;
   text-decoration: none;
  
}

.best_wrap {
    width: 1150px;
    height: auto;
    margin-left: 100px;
    margin-top: 10px;
    padding: 20px 20px 0px 20px;

}
.best_clickNum {
   position: relative;
   font-size: 15px;
   margin-top: 10px;
   
}
.best_clickNum > *{
   margin: 15px 10px;
}

.bestmain_top{
    margin-left: 100px;
   margin-top: 20px;
}
    .button_s{
    font-size:12px; text-decoration:none !important; white-space:nowrap; display:inline-block; vertical-align:baseline; position:relative; cursor:pointer; padding:2px 10px; min-width:20px; border:2px solid #221f1f; color:#fff !important; margin:0 2px; text-align:center; font-weight:bold; border-radius:5px; background-color:#221f1f;
    }
    .pagingbest > li {
    list-style: none;
    padding-left: 18px;
    padding-top: 15px;
    display: inline-block;
}
    </style>

    <script>
    function sendPageRow() {
    	location.href='Book_KbestSeller.do?b_ctgno1=${bookVo.b_ctgno1}&orderby=tot&direct=DESC&pageRow='+$("#divnum").val();
    }
    </script>
</head>
<body>
     <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
         <jsp:include page="../include/sideKbig.jsp"></jsp:include>
            
       

        <div class="mem_content">
            <h1 class="bestmain_top">국내도서 종합 베스트셀러</h1>
            
                <div class="best_indexWrap">
                    <!-- <div class="pagenate1 clear" style="text-align: center; margin: 0,auto !important;"> -->
                    <div class="pagenate1 clear" style=" margin: 0,auto !important;">
                      <ul class='paging'> 
                        <c:if test="${bookVo.strPage > bookVo.pageRange}">
                        <li><a href="Book_KbestSeller.do?b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.strPage-1 }&orderby=tot&direct=DESC&pageRow=${bookVo.pageRow}"> < </a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${bookVo.strPage}" end="${bookVo.endPage }">
                            <li><a href='Book_KbestSeller.do?b_ctgno1=${bookVo.b_ctgno1}&reqPage=${rp}&orderby=tot&direct=DESC&pageRow=${bookVo.pageRow}' <c:if test="${rp==bookVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${bookVo.totPage > bookVo.endPage}">
                        	<li><a href="Book_KbestSeller.do?&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.endPage+1 }&orderby=tot&direct=DESC&pageRow=${bookVo.pageRow}"> > </a></li>
                        </c:if>
                       </ul> 
                        <select name="pageRow" id="divnum" onchange="sendPageRow();">
                            <option value ="1" <c:if test="${bookVo.pageRow==1}"> selected</c:if>>1개씩 보기</option>
                            <option value ="5" <c:if test="${bookVo.pageRow==5}"> selected</c:if>>5개씩 보기</option>
                            <option value ="10" <c:if test="${bookVo.pageRow==10}"> selected</c:if>>10개씩 보기</option>
                            <option value ="15" <c:if test="${bookVo.pageRow==15}"> selected</c:if>>15개씩 보기</option> 
                        </select> 
                    </div>
                    <br>
                    <br>
                </div>
         

            <!-- 1 -->
            <c:forEach var = "vo" items="${list }">
            <div class="best_wrap">
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
                        <span class="s_grade" style="font-size: 16px;">회원리뷰(${vo.rcnt }건) ${vo.avg }/5</span>
                        																																										
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
             <br>
             <br>
             <hr>
            
            </div> 
            </c:forEach>
        </div>  
        <aside class="mypage_ad">
            <div class="mypage_ad_name"><p>최근본상품</p></div>
            <div class="img_area">
                <img src="img/newEye1.jpg" width="70px" height="100px">
            </div>
            <div style="text-align: center;">
                책이름
            </div>
        </aside> 
         
    </div>
     
     <jsp:include page="../include/footer.jsp"></jsp:include>	

</body>
</html>