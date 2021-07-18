<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                  <div class="swiper-slide" style="background-image: url('img/book05.jpg');">&nbsp;</div> <!-- &nbsp; 공백 -->
                  <div class="swiper-slide" style="background-image: url('img/book06.jpg');">&nbsp;</div>
                  <div class="swiper-slide" style="background-image: url('img/book07.jpg');">&nbsp;</div>
                  <div class="swiper-slide" style="background-image: url('img/book04.jpg');">&nbsp;</div> 
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <div class="index_container">
                <div class="index_randomAds">
                    <div class="index_Ads01">
                        아마존 27주 연속 1위<br> 어쩌구를 잇는 신예 스릴러<br>
                        <img src="img/book09.jpg" alt="">
                    </div>
                    <div class="index_Ads02">
                        <div class="index_miniAd"> 쪼그만 <br>광고<br> 책소개책소개<br>책소개</div>
                        <div><img src="img/book10.jpg" alt=""></div>                        
                    </div>                    
                </div>
                <div class="index_todaysBooks mySwiper">
                    <div class=" swiper-wrapper">
                        <div class=" index_todaysBooks swiper-slide">
                            <div class="index_todaysThumnail">
                                <img src="img/book13.jpg" alt="">
                            </div>
                            <div class="index_todayDetails">
                                <div class="index_tdContext">오늘의 책</div>
                                <li>공깃밥을 박차고 우주로 날아간 호라이의 대모험! <br>
                                    유쾌한 상상력으로 어린이의 마음을 그리는 작가, <br>
                                    눈물바다』 서현의 달걀프라이 그림책. <br>
                                    달걀프라이에서 시작한 거침없는 상상을 감각적인 그림으로 두 권에 담았다. <br>
                                    끝없이 이어지는 기발하고 엉뚱하며 유쾌한 이야기를 따라가보자.
                                </li>                        
                            </div>
                        </div>
                        <div class=" index_todaysBooks swiper-slide">
                            <div class="index_todaysThumnail">
                                <img src="img/book14.jpg" alt="">
                            </div>
                            <div class="index_todayDetails">
                                <div class="index_tdContext">오늘의 책</div>
                                <li>공깃밥을 박차고 우주로 날아간 호라이의 대모험! <br>
                                    유쾌한 상상력으로 어린이의 마음을 그리는 작가, <br>
                                    눈물바다』 서현의 달걀프라이 그림책. <br>
                                    달걀프라이에서 시작한 거침없는 상상을 감각적인 그림으로 두 권에 담았다. <br>
                                    끝없이 이어지는 기발하고 엉뚱하며 유쾌한 이야기를 따라가보자.
                                </li>                        
                            </div>
                        </div>
                        <div class=" index_todaysBooks swiper-slide">
                            <div class="index_todaysThumnail">
                                <img src="img/book15.jpg" alt="">
                            </div>
                            <div class="index_todayDetails">
                                <div class="index_tdContext">오늘의 책</div>
                                <li>공깃밥을 박차고 우주로 날아간 호라이의 대모험! <br>
                                    유쾌한 상상력으로 어린이의 마음을 그리는 작가, <br>
                                    눈물바다』 서현의 달걀프라이 그림책. <br>
                                    달걀프라이에서 시작한 거침없는 상상을 감각적인 그림으로 두 권에 담았다. <br>
                                    끝없이 이어지는 기발하고 엉뚱하며 유쾌한 이야기를 따라가보자.
                                </li>                        
                            </div>
                        </div>                      
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
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksTitle">BSP NOW ></div>
                        <div class="index_NowBooksImg">
                            <img src="img/book18.jpg" alt="">
                        </div>                        
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">양은솔 작가 신작</a></li>
                                <li><a class="index_NowD2">책제목</a></li>
                                <li><a class="index_NowD3">저자 | 출판사</a></li>
                                <li><a class="index_NowD4">8,900원</a></li>
                            </ul>
                        </div>
                    </div>  
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksImg">
                            <img src="img/book16.jpg" alt="">
                        </div>
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">양은솔 작가 신작</a></li>
                                <li><a class="index_NowD2">책제목</a></li>
                                <li><a class="index_NowD3">저자 | 출판사</a></li>
                                <li><a class="index_NowD4">8,900원</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksImg">
                            <img src="img/book20.jpg" alt="">
                        </div>
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">양은솔 작가 신작</a></li>
                                <li><a class="index_NowD2">책제목</a></li>
                                <li><a class="index_NowD3">저자 | 출판사</a></li>
                                <li><a class="index_NowD4">8,900원</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksImg">
                            <img src="img/book21.jpg" alt="">
                        </div>
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">양은솔 작가 신작</a></li>
                                <li><a class="index_NowD2">책제목</a></li>
                                <li><a class="index_NowD3">저자 | 출판사</a></li>
                                <li><a class="index_NowD4">8,900원</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksImg">
                            <img src="img/book16.jpg" alt="">
                        </div>
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">양은솔 작가 신작</a></li>
                                <li><a class="index_NowD2">책제목</a></li>
                                <li><a class="index_NowD3">저자 | 출판사</a></li>
                                <li><a class="index_NowD4">8,900원</a></li>
                            </ul>
                        </div>
                    </div>                  
                </div>
            </div>            
            <div class="index_recentProduct">
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksTitle">화제의 책 ></div>
                    <div class="index_NowBooksImg">
                        <img src="img/book19.jpg" alt="">
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                            
                            <li><a class="index_NowD2">책제목</a></li>
                            <li><a class="index_NowD3">저자 | 출판사</a></li>
                            <li><a class="index_NowD4">8,900원</a></li>
                        </ul>
                    </div>
                </div>  
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksImg">
                        <img src="img/book16.jpg" alt="">
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                           
                            <li><a class="index_NowD2">책제목</a></li>
                            <li><a class="index_NowD3">저자 | 출판사</a></li>
                            <li><a class="index_NowD4">8,900원</a></li>
                        </ul>
                    </div>
                </div>
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksImg">
                        <img src="img/book19.jpg" alt="">
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                            
                            <li><a class="index_NowD2">책제목</a></li>
                            <li><a class="index_NowD3">저자 | 출판사</a></li>
                            <li><a class="index_NowD4">8,900원</a></li>
                        </ul>
                    </div>
                </div>
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksImg">
                        <img src="img/book18.jpg" alt="">
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                           
                            <li><a class="index_NowD2">책제목</a></li>
                            <li><a class="index_NowD3">저자 | 출판사</a></li>
                            <li><a class="index_NowD4">8,900원</a></li>
                        </ul>
                    </div>
                </div>
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksImg">
                        <img src="img/book19.jpg" alt="">
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                           
                            <li><a class="index_NowD2">책제목</a></li>
                            <li><a class="index_NowD3">저자 | 출판사</a></li>
                            <li><a class="index_NowD4">8,900원</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            </div>  
          
            <aside class="mypage_ad">
                <div class="mypage_ad_name"><p>최근본상품</p></div>
                <div class="img_area">
                    <img src="img/book.jpg" width="70px" height="100px">
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