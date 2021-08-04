<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>외국도서</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/big.css">
   <link rel="stylesheet" href="/bsp/css/style.css">
   <link rel="stylesheet" href="/bsp/css/reset.css">
    <link rel="stylesheet" href="/bsp/css/edge.css">
   <!-- <link rel="stylesheet" href="/bsp/css/index.css"> -->
     <script src="/bsp/js/main.js"></script>
     <script src="/bsp/js/big.js"></script>
     
    

<style>
.imgimg {
text-align: center;
}
</style>

</head>

<body>
 <jsp:include page="../include/header.jsp"></jsp:include>
   <!--  <div id=header></div> -->
    <div class="wrap">

        <jsp:include page="../include/sideFbig.jsp"></jsp:include>
            
        <div class="mem_content">
            


            <div class="BigIndex_newEye">  ${vo.b_ctgname2 } </div>

            <div class="smallCtg_area"> 
                <!-- <div class="smallTitle">  -->
                <c:forEach var = "vo" items="${selectctgnamed }">
                    <div class="cate2"><a href="Book_FsmallIdx.do?b_ctgno2key=${vo.b_ctgno2key}&b_ctgdetail=${vo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=${bookVo.orderby}&direct=${bookVo.direct}&pageRow=${bookVo.pageRow}">${vo.b_ctgdetail } </a></div> 

                </c:forEach>   
                <!-- </div> -->
            </div>



        <div class="BigIndex_choice"> BSP의 선택 </div>
       
                
        <div class="swiper-container">
            <div class="swiper-wrapper">
            <c:forEach var = "vo" items="${list1 }">
                <div class="swiper-slide">
                    <!-- 1번 -->
                    <div class="BigIndex_choice_wrap">
                        <div class="choiceImg"><a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}">
                        	<input type="hidden"  class="abc" value="${vo.b_imgmain }"/>
                        	<img class="blah" src = "/bsp/img/${vo.b_imgmain }"  style="height: 100%; width: 100%;"></a></div>
                        <div class="chocieInfo">
                            <p class="choiceName"> ${vo.b_title } </p>
                            <p class="choice_pub">
                                <span class="choice_author " style="font-size : 17px;">${vo.b_author}</span>
                                <em class="divi"> |</em>
                                <span class="chocie_pub" style="font-size : 17px;">${vo.b_publisher }</span>
                            </p>
                            <p class="choice_price">
                                <span class="bps_price" style="font-size: 17px;">${vo.b_price }원</span>
                                <span class="bps_point">  <img src = "/bsp/img/point.png" style="width: 25px; height:25px; margin-bottom: 3px; font-size: 17px;">${vo.b_point }</span>
                            </p>
                            <div class="choice_intro">
                            
                                <span class="choice_infoStory"  style="font-size: 19px;overflow: hidden; width:100% height:100%" >
                                ${vo.b_content }
                                
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
            </div>
            <div class="swiper-button-prev"></div> 
            <div class="swiper-button-next"></div> 
        </div>    
               
                
			<!-- 2  -->
            <div class="BigIndex_newEye">베스트셀러</div>
           <div class="BigIndex_newEye_wrap">
                <c:forEach var = "vo" items="${list2 }">
                
                <div class="BigIndex_newEye_content">
                    <div class="newEye_imgSection">
                        <div class="newEye_img"><a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}">
                        <input type="hidden"  class="abc" value="${vo.b_imgmain }"/>
                        <img class="blah" src="/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }", title="${vo.b_title }" style="width: 200px; height: 300px;"></a></div>
                    </div> 
                    <div class="newEye_infoSection">  
                        <div class="newEye_title"><b>${vo.b_title} </b></div>
                        <div class="newEye_authorPub">${vo.b_author } | ${vo.b_publisher }</div>
                        <div class="newEye_price"><b>${vo.b_price }</b>원</div>
                        <div class="newEye_intro" style="font-size: 15px; overflow: hidden; width:280px; height:200px;">
                   
                            ${vo.b_content }
                            <br> <!-- 임의로  -->

                             
                        </div>
                    </div> 
                   </div> 
                  
               </c:forEach>
               </div> 
			<!--3  -->
            <div class="BigIndex_newEye">눈에 띄는 새책 </div>
            <div class="BigIndex_newStar_wrap">
          
             <c:forEach var = "vo" items="${list3 }">
                <div class="BigIndex_newStar_contents">
                    <div class = "imgimg" style="width: 300px; height: 250px;"> <a href="Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}">
                    <input type="hidden"  class="abc" value="${vo.b_imgmain }"/>
                    <img class="blah" src = "/bsp/img/${vo.b_imgmain }" alt="${vo.b_title }", title="${vo.b_title }" style="width: 200px; height: 250px;"></a></div>
                    <div class="newStar_info">
                        <ul> 
                            <li><a class="newStar_title">${vo.b_title }</a></li>
                            <li><a class="newStar_author">${vo.b_author }</a></li>
                            <li><a class="newStar_pub">${vo.b_publisher }</a></li>
                            <li><a class="newStar_Price">${vo.b_price } 원</a></li>
                        </ul>
                    </div>            
                 </div>
                 
          </c:forEach>
       
       
       
       

        </div>
        
    <jsp:include page="../include/quick.jsp"></jsp:include>
           
    </div>
     <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>

</body>
</html>