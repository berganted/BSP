<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/big.css">
   <link rel="stylesheet" href="/bsp/css/style.css">
   <link rel="stylesheet" href="/bsp/css/reset.css">
     <script src="/bsp/js/main.js"></script>
     <script src="/bsp/js/big.js"></script>
     
    



</head>

<body>
 <jsp:include page="../include/header.jsp"></jsp:include>
   <!--  <div id=header></div> -->
    <div class="wrap">

        <jsp:include page="../include/sideBigIdx.jsp"></jsp:include>
            
        <div class="mem_content">
            


            <div class="BigIndex_newEye">  ${vo.b_ctgname2 } </div>

            <div class="smallCtg_area"> 
                <!-- <div class="smallTitle">  -->
                <c:forEach var = "vo" items="${selectctgnamed }">
                    <div class="cate2"><a href="${vo.b_ctgdlink }?b_ctgno2key=${vo.b_ctgno2key}">${vo.b_ctgdetail } </a></div> 

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
                        <div class="choiceImg"><img src = "${vo.b_imgno }" style="height: 100%; width: 100%;"></div>
                        <div class="chocieInfo">
                            <p class="choiceName"> ${vo.b_title }  : 나를 넘어서는 힘</p>
                            <p class="choice_pub">
                                <span class="choice_author " style="font-size : 15px;">${vo.b_author}</span>
                                <em class="divi">|</em>
                                <span class="chocie_pub" style="font-size : 15px;">${vo.b_publisher }</span>
                            </p>
                            <p class="choice_price">
                                <span class="bps_price">${vo.b_price }</span>원
                                <span class="bps_point">★123원</span>
                            </p>
                            <div class="choice_intro">
                                <span class="choice_introTitle" style="color: blue; font-size: 22px;">
                                    책 한 권 읽지 못했던 그는 어떻게 세계 최고의 두뇌력을 갖게 됐을까?
                                </span>   <br>
                                <span class="choice_infoStory"  style="font-size: 17px;" >
                                ${vo.b_content }
                                    UN, 하버드, 구글… 세계 1%가 극찬한 두뇌 전문가 짐 퀵이 전하는 잠재력의 놀랍고 위대한 힘!
                                    6년 전 스페이스X의 일론 머스크가 더 똑똑해지고 싶다는 열망에 한 두뇌 전문가를 찾아 큰 화제가 됐다. 
                                    그 전문가는 바로 ‘짐 퀵’이었다. 그는 25년 넘게 세계 정상급의 CEO와 운동선수, 배우 등 각계각층의 성공한 사람들뿐 아니라
                                    UN, 미국 백악관, 하버드대학교, 구글, 나이키, 자포스 등 세계적 기업과 기관, 단체에서 찾는 독보적이고 저명한 브레인 코치다. 
                                    세계적인 경제지 《포브스》에서는 “짐 퀵은 지식을 배우거나 일을 하거나 취미로 운동을 하더라도 원하는 수준 이상의 성과를 이루는 법을 알려준다”고 평했다.
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
               
                

            <div class="BigIndex_newEye"> 눈에 띄는 새책</div>
                  <div class="BigIndex_newEye_wrap">
            <div class="BigIndex_newEye">베스트셀러</div>
           		 <div class="BigIndex_newEye_wrap">
                <c:forEach var = "vo" items="${list2 }">
                
                <div class="BigIndex_newEye_content">
                    <div class="newEye_imgSection">
                        <div class="newEye_img"><img src="${vo.b_imgno }" style="width: 200px; height: 300px;"></div>
                    </div> 
                    <div class="newEye_infoSection">  
                        <div class="newEye_title"><b>${vo.b_title} </b></div>
                        <div class="newEye_authorPub">${vo.b_author } | ${vo.b_publisher }</div>
                        <div class="newEye_price"><b>${vo.b_price }</b>원</div>
                        <div class="newEye_intro" style="font-size: 17px;">
                   
                            ${vo.b_content }
                            <br> <!-- 임의로  -->
                            아침 먹고 땡 집을 나서려는데 새로 산 구두가 맘에 쏙 들어 날아갈 듯 가벼운 발걸음으로 또각 또각 또각 걷다가
                     아침 먹고 땡 집을 나서려는데 아 오늘따라 허리가 하나도 안 아파 가슴을 쫙 펴니 십년은 젊어진 줄
                     눈을 부라리며 걷다가 똥 밟았네 똥
                             
                        </div>
                    </div> 
                   </div> 
                  
               </c:forEach>
               </div> 

            <div class="BigIndex_newEye">눈에 띄는 새책 </div>
            <div class="BigIndex_newStar_wrap">
          
             <c:forEach var = "vo" items="${list3 }">
                <div class="BigIndex_newStar_contents">
                    <div style="width: 200px; height: 250px;"><img src="bsp/img/${vo.b_imgmain }" alt="마지막 몰입", title="마지막 몰입" style="width: 200px; height: 250px;"></div>
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
            

        </div>
        </div>
    <jsp:include page="../include/quick.jsp"></jsp:include>
           
    </div>
     <jsp:include page="../include/footer.jsp"></jsp:include>
    

</body>
</html>