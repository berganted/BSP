<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- visual 부분 -->
        <div class="index_visual">
            <div class="index_sideCategory">
                <div class="index_quickCate">나의 계정</div>
                <div class="index_quickCateDetail">
                    <li><a href="/bsp/user/infoidcheak.do">회원 정보</a></li>
                    <li><a href="/bsp/user/point.do?m_no=${userInfo.m_no }">포인트</a></li>
                    <li><a href="/bsp/user/member_remove.do">회원 탈퇴</a></li>
                    <li><a href="/bsp/order/list.do">주문 조회</a></li> 
                    <li><a href="/bsp/returning/list.do">반품/교환 조회</a></li> 
                </div>
            </div>            
        </div>                   
  