<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQboard</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>    
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="js/index.js"></script>
    <script src="js/main.js"></script>	
</head>
<body> 
        <%@ include file="/WEB-INF/view/include/header.jsp" %>
        <!-- visual 부분 입니다 -->  
        <div class="wrap">
            <div class="support_search">
                <div class="support_welcome">
                    <li><a class="support_w1">BSP 고객센터 입니다!!!!!.</a></li>
                    <li><a class="support_w2">무엇을 도와드릴까요?</a></li>
                </div>
                <div class="support_searchBar">
                    <form action="#">
                        <input type="text" placeholder="검색어를 입력하세요">
                    </form>
                    <div class="support_searchIcon">
                        <img src="img/logo/Search.png">
                    </div>
                </div>
            </div>
            <div class="support_FAQ">
                <div class="support_TopTen">
                    <div class="support_change">
                        <ul>
                            <li><a class="support_total">전체</a></li>
                            <li><a class="support_order">주문</a></li>
                            <li><a class="support_shipping">배송</a></li>
                            <li><a class="support_cancel">취소/교환/반품</a></li>
                            <li><a class="support_member">회원</a></li>
                        </ul>
                    </div>                    
                    <a class="support_title">자주 묻는 질문</a>           
                    <div class="support_totalDetail">
                        <li><a class="support_t">[본인인증] 본인 인증 방법에는 어떤 것들이 있나요? ▼</a></li>
                        <div class="support_t2"><br>회원가입 방법, 본인 인증 수단, 회원가입 방법에 따른 본인 인증 기능 가능 수단을 안내해 드리겠습니다.
                            <br><br>회원가입 방법<br>
                            <br>-14세 이상 일반회원: 14세 이상 국내거주 내/외국인 회원
                            <br>-14세 미민 어린이 회원: 14세 미만인 국내거주 내/외국인 회원
                            <br>-법인회원: 법인실명인증 후 가입한 회원
                            <br>-해외거주 회원: 해외에 거주하는 외국인 회원
                            <br>-실명 인증 회원: 2012년 08월 18일 이전 주민번호 입력을 통해 실명인증으로 가입한 회원<br>
                            <br>*14세 미만 어린이 회원의 경우: 가입 시 법정대리인의 동의 및 본인인증 필요
                            <br>*법인회원의 경우: 영화 예매, 성인콘텐츠 구매제한
                            <br>*해외 거주 회원의 경우: 영화/공연 예매, 성인콘텐츠 구매제한<br>
                            <br>본인인증 수단<br>
                            <br>-휴대폰 본인인증: 본인 명의 휴대폰 인증을 통한 본인 인증 방법으로 가장 간편하고 일반적인 본인인증 방법
                            <br>-I-PIN 본인인증
                            <br>a.일반 I-PIN: 본인인증 수단이 있는 고객이 발급 받는 I-PIN
                            <br>b.공공 I-PIN: 본인인증 수단이 없는 고객이 발급 받는 I-PIN<br>&nbsp;
                        </div>
                    </div>
                    <div class="support_orderDetail">
                        <li><a class="support_t">[해피머니] 해피머니 문화상품권은 어떻게 사용하나요? ▼</a></li>
                        <div class="support_t2"><br>㈜해피머니아이엔씨 (www.happymoney.co.kr) 에서 발행한 상품권은 [해피캐시]로 환전 후 이용 가능합니다.<br>
                            ● PC<br>http://www.yes24.com/Exchange/Exchange02.aspx<br>YES24 홈페이지 접속 전,  해피머니 사이트 (www.happymoney.co.kr) 에서  상품권을 해피캐시로 충전한 후,<br>
                            해피머니 사이트 메인화면 '쇼핑몰' 중 'YES24' 로고를 클릭> '쇼핑몰로 이동하기' 클릭 (또는 "쇼핑몰>도서몰>YES24 클릭")하시어 YES24로 접속하면 해피머니의 메뉴가 상단에 나타나며,<br>
                             그 상태에서 상품을 카트에 담아 [카트] 메뉴 아래의 [주문하기]를 클릭한 후 [결제] 단계의 [배송주소] 바로 윗 부분의 [해피캐쉬] > [사용하기]를 클릭 후사용 해 주시면 됩니다. <br><br>
                            ▶ 해피머니 홈페이지 바로가기 http://www.happymoney.co.kr<br><br>
                             ● 모바일 :
                            [카트] 메뉴 하단 [주문하기] > [결제] 단계에서 [할인적용] 하단의 [외부상품권/포인트] 메뉴 중 [해피머니 상품권/모바일팝)]을 선택 > 
                            해피머니의 아이디 와 비밀번호를 입력 후 [캐시잔액 조회] > [사용하기]를 선택 후  사용 가능합니다.<br>&nbsp;
                        </div>
                    </div>
                    <div class="support_shippingDetail">
                        <li><a class="support_t">[배송] 배송 방법에는 어떤 것이 있나요? ▼</a></li>
                        <div class="support_t2"><br>배송 방법에는 크게 국내 배송과 해외 배송으로 나누어집니다.<br>
                            ●국내 배송<br>1.일반 택배<br>주문하신 상품을 일반적으로 택배 서비스를 이용하여 배송<br>
                            2.안심택배<br>부재중이거나 또는 범죄예방을 위해 집에서 택배물건을 받지 않기를 원하는 시민들이 설치된 무인택배 보관함에서 시간과 장소에 구애받지 않고 
                            택배 물건을 찾아갈 수 있도록 하는 서비스<br>
                            3.편의점 택배<br>고객이 지정한 편의점으로 배송되어 원하는 시간에 수령가능(일부지역 제외)<br>
                            4.중고매장 픽업<br>결제하신 상품을 BSP 중고매장에서 수령하는 서비스<br>※ 단, 도서산간지역과 사서함 주소지는 우체국택배로 발송 됩니다.<br>
                            ●해외 배송<br>1.DHL<br>국제공항우편인 DHL를 통해 배송<br>2.EMS<br>우체국 항공택배인 EMS를 통해 배송<br>&nbsp;
                        </div>
                    </div>
                    <div class="support_cancelDetail">
                        <li><a class="support_t">[도서분철] 분철 상품 주문 시 '취소/교환/반품'이 가능한가요? ▼</a></li>
                        <div class="support_t2"><br>일반상품을 편집하여 제공되는 분철서비스 특성 상 편집 완료 된 상품의 '취소/교환/반품'은 불가능 합니다.<br>
                            분철편집이 진행되기 전 단계인 "발송 준비 중" 상태인 경우만 취소 가능하며, 분철 상품은 반품 및 교환 신청이 불가능합니다.<br>
                            수령하신 분철상품의 문제가 있으실 경우 고객센터 1544-3800 또는 고객센터>1:1친절상담으로 문의해주시길 바랍니다.<br>&nbsp;                           
                        </div>
                    </div>
                    <div class="support_memberDetail">
                        <li><a class="support_t">[로그인] 아이디(ID), 비밀번호를 잊어버렸어요. 어떻게 확인하나요? ▼</a></li>
                        <div class="support_t2"><br>아이디찾기<br><br>1) 개인회원<br>
                            회원 로그인 화면에서 [아이디 찾기]를 클릭 하여 간편찾기(이메일, 전화번호), 휴대폰 인증 또는 아이핀(I-Pin)인증을 통해 확인이 가능합니다.<br>
                            2) 법인회원<br>법인명, 사업자등록번호를 통하여 확인이 가능합니다.<br><br>비밀번호 찾기
                            <br>1) 개인회원<br>회원 로그인 화면에서 [비밀번호 찾기]를 클릭 하여 아이디 와 가입 시 기입한 이메일 주소 또는 휴대폰번호를 입력 하여 임시비밀번호 발급이 가능합니다.               
                            <br>위의 정보로 받을 수 없는 경우 본인인증 후 새 비밀번호로 변경해주세요. <br>
                            2) 법인회원<br>회원 아이디, 법인명, 사업자번호 입력 후 확인 > 가입 시 기입한 이메일 주소 또는 휴대폰번호로 임시비밀번호 발급이 가능합니다.
                            <br>※ 위 경로로 ID 및 비밀번호를 찾을 수 없는 경우에는 고객센터(0000-0000)로 문의하시기 바랍니다.<br>&nbsp;
                        </div>
                    </div>
                </div>                
            </div>
            <div class="FAQboard_sub">
                <div class="FAQboard_size">
                    <h3 class="sub_title">문의게시판</h3>
        
                    <div class="bbs">
                        <table class="FAQboard_list">
                        <p><span><strong>총 100개</strong>  |  1/10페이지</span></p>
                            <caption>게시판 목록</caption>
                            <colgroup>
                                <col width="80px" />
                                <col width="*" />
                                <col width="100px" />
                                <col width="100px" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                </tr>
                            </thead>
                            <tbody>      
                                <tr>
                                    <td>10</td>
                                    <td class="txt_l">
                                        <a href="board_view.html">게시글 제목</a>
                                    </td>
                                    <td class="FAQboard_writer">
                                        홍길동
                                    </td>
                                    <td class="date">2021-01-01</td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td class="txt_l">
                                        <a href="board_view.html">게시글 제목</a>
                                    </td>
                                    <td class="FAQboard_writer">
                                        홍길동
                                    </td>
                                    <td class="date">2021-01-01</td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td class="txt_l">
                                        <a href="board_view.html">게시글 제목</a>
                                    </td>
                                    <td class="FAQboard_writer">
                                        홍길동
                                    </td>
                                    <td class="date">2021-01-01</td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="btnSet"  style="text-align:right;">
                            <a class="FAQboard_btn" href="board_write.html">글작성 </a>
                        </div>
                        <div class="pagenate clear">
                            <ul class='paging'>
                                <li><a href='javascript:;' class='current'>1</a></li>
                                <li><a href='javascript:;'>2</a></li>
                                <li><a href='javascript:;'>3</a></li>
                            </ul> 
                        </div>
                    
                        <!-- 페이지처리 -->
                        <div class="bbsSearch">
                            <form method="get" name="searchForm" id="searchForm" action="">
                                <span class="srchSelect">
                                    <select id="stype" name="stype" class="dSelect" title="검색분류 선택">
                                        <option value="all">전체</option>
                                        <option value="title">제목</option>
                                        <option value="contents">내용</option>
                                    </select>
                                </span>
                                <span class="searchWord">
                                    <input type="text" id="sval" name="sval" value=""  title="검색어 입력">
                                    <input type="button" id="" value="검색" title="검색" style="background-image: url(img/ico_search.png);">
                                </span>
                            </form>                            
                        </div>                 
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp" %>     
</body>
</html>