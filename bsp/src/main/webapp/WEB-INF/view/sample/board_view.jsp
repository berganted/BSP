<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
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
    <div id='header'></div>
    <div class="wrap">
        
        <div class="FAQboard_sub">
            <div class="FAQboard_size">
                <h3 class="sub_title">문의글 상세</h3>
                <div class="bbs">
                    <div class="FAQboard_view">
                        <div class="FAQboard_title">
                            <dl>
                                <dt>게시글 제목 </dt>
                                <dd class="date">작성일 : 2021-01-01 17:51:58.0 </dd>
                            </dl>
                        </div>
                        <div class="cont"><p>게시판 내용</p> </div>
                        <dl class="file">
                            <dt>첨부파일 </dt>
                            <dd>
                            <a href="#" 
                            target="_blank">첨부파일.pptx [38.07KB] </a></dd>
                        </dl>
                                    
                        <div class="btnSet clear">
                            <div class="fl_l"><a href="FAQboard.html" class="FAQboard_btn">목록으로</a></div>    
                            <div class="fl_l2"><a href="board_write.html" class="FAQboard_btn">수정</a></div>                        
                        </div>
          
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="footer"></div>
</body>
</html>