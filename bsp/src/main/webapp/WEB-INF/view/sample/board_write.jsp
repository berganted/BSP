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
                <h3 class="sub_title">문의글 작성</h3>
    
                <div class="bbs">
                <form method="post" name="frm" id="frm" action="" enctype="multipart/form-data" >
                    <table class="board_write">
                        <tbody>
                        <tr>
                            <th>제목</th>
                            <td>
                                <input type="text" name="title" id="title" class="wid100" value=""/>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="contents" id="contents"></textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                        <a class="FAQboard_btn" href="FAQboard.html">저장 </a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        
    </div>
    <div id="footer"></div>
</body>
</html>