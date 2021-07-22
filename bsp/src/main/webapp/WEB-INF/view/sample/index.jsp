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
    <title>Document</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/bsp/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/index.js"></script>
	<c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 3) %></c:set>
</head>
<body> 
    <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
        
        <!-- visual 부분 -->
        <div class="index_visual">
            <div class="index_sideCategory">
                <div class="index_quickCate">빠른분야찾기</div>
                <div class="index_quickCateDetail">
                    <li><a href="#">BSP NOW</a></li>
                    <li><a href="#">국내도서</a></li>
                    <li><a href="#">외국도서</a></li>
                    <li><a href="#">웹소설/코믹</a></li> 
                </div>
            </div>
            <div class="swiper-container mySwiper">
                <div class="swiper-wrapper">
                  <div class="swiper-slide" style="background-image: url('/bsp/img/book05.jpg');">&nbsp;</div> <!-- &nbsp; 공백 -->
                  <div class="swiper-slide" style="background-image: url('/bsp/img/book06.jpg');">&nbsp;</div>
                  <div class="swiper-slide" style="background-image: url('/bsp/img/book07.jpg');">&nbsp;</div>
                  <div class="swiper-slide" style="background-image: url('/bsp/img/book04.jpg');">&nbsp;</div> 
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <div class="index_container">
                <div class="index_randomAds">
                <c:forEach var="vo" items="${list5 }" varStatus="status">
                    <div class="index_Ads01">
                        ${vo.b_content }
                        <img src="${vo.b_imgno }" alt="">
                    </div>
                 </c:forEach>  
                  <c:forEach var="vo" items="${list5 }" varStatus="status">  
                    <div class="index_Ads02">
                        <div class="index_miniAd"> 
                        	${vo.b_content }
                        <div><img src="${vo.b_imgno }" alt=""></div>                        
                    	</div>  
                   	</div>  
                  </c:forEach>                   
                </div>
                <div class="index_todaysBooks mySwiper">
                    <div class=" swiper-wrapper">
                    <c:forEach var="vo" items="${list4 }" varStatus="status">
                        <div class=" index_todaysBooks swiper-slide">
                            <div class="index_todaysThumnail">
                                <img src="${vo.b_imgno }" alt="">
                            </div>
                            <div class="index_todayDetails">
                                <div class="index_tdContext">오늘의 책</div>
                                ${vo.b_content }
                            </div>
                        </div>
                        </c:forEach> 
                    </div>
                    <div class="swiper-button-next" id="index_next"></div><!--강제로만듬-->
                    <div class="swiper-button-prev" id="index_prev"></div>
                </div>
                <div class="index_rank">
                    <div class="index_info">
                        <div class="index_ranContent">
                            <div class="index_board_area">
                               <div class="index_board_title on">베스트셀러</div>
                               <div class="index_board_title">인기검색어</div>
                               <div class="index_board_content" id="index_board_notice">
                                  <ul>
                                      <li>1 책제목/저자.</li>
                                      <li>2 책제목/저자.</li>
                                      <li>3 책제목/저자.</li>
                                      <li>4 책제목/저자.</li>
                                      <li>5 책제목/저자.</li>
                                      <li>6 책제목/저자.</li>   
                                      <li>7 책제목/저자.</li>   
                                      <li>8 책제목/저자.</li>                                                                                                  
                                  </ul>
                               </div>
                               <div class="index_board_content" id="index_board_data">
                                 <ul>
                                     <li>1 인기검색어. <span>-</span></li>
                                     <li>2 인기검색어. <span>▲1</span></li>
                                     <li>3 인기검색어. <span>new</span></li>
                                     <li>4 인기검색어. <span>▼3</span></li>
                                     <li>5 인기검색어. <span>-</span></li>
                                     <li>6 인기검색어. <span>▲2</span></li>
                                     <li>7 인기검색어. <span>new</span></li>
                                     <li>8 인기검색어. <span>-</span></li>                                                            
                                 </ul>
                              </div>
                            </div>
                        </div>                        
                    </div>
                </div>
                <div class="index_NowBooks">
                    <div class="index_NowBooksTitle">BSP NOW ></div>
                <c:forEach var="vo" items="${list1 }" varStatus="status">
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksImg">
                            <img src="${vo.b_imgno }" alt="">
                        </div>                        
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">${vo.b_author} 작가 신작</a></li>
                                <li><a class="index_NowD2">${vo.b_title }</a></li>
                                <li><a class="index_NowD3">${vo.b_author} | ${vo.b_publisher }</a></li>
                                <li><a class="index_NowD4">${vo.b_price } 원</a></li>
                            </ul>
                        </div>
                    </div>
                    </c:forEach>  
                </div>
            </div>            
            <div class="index_recentProduct">
                <div class="index_NowBooksTitle">화제의 책 ></div>
            <c:forEach var="vo" items="${list1 }" varStatus="status">
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksImg">
                        <img src="${vo.b_imgno }" alt="">
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                            
                            <li><a class="index_NowD2">${vo.b_title }</a></li>
                            <li><a class="index_NowD3">${vo.b_author} | ${vo.b_publisher }</a></li>
                            <li><a class="index_NowD4">${vo.b_price } 원</a></li>
                        </ul>
                    </div>
                </div>  
            </c:forEach> 
            </div>
            </div>  
          
            <aside class="mypage_ad">
                <div class="mypage_ad_name"><p>최근본상품</p></div>
                <div class="img_area">
                    <img src="/bsp/img/book.jpg" width="70px" height="100px">
                </div>
                <div style="text-align: center;">
                    <p>책이름</p>
                </div>
            </aside>                  
        </div>   
    </div>
    <jsp:include page="../include/footer.jsp"></jsp:include>    
</body>
</html>