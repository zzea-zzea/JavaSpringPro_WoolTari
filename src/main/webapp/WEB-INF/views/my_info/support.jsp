<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/mypage.css">
    <link rel="stylesheet" href="../css/sup.css">
    
    <body>
    <%@ include file="../common/_header.jsp"%>
    
       <div class="mypage_box_main">
    <div class="main_choice_box">
        <ul class="choice_menu_tap">
        <li class="menu_tap_info" onclick="location.href='mypage.jsp'">내 정보관리</li>
            <li class="menu_tap_support" style="background: rgba( 185, 108, 108, 0.5);">후원내역</li>
            <li class="menu_tap_comment" onclick="location.href='comment.jsp'">내 글/댓글</li>
        </ul>
        </div>
    
    <h3 class="support_box_title">내 후원내역</h3>
    
    <div class="support_box_main">
    	<% 
     	for (int i = 0; i < 5; i++) {
 	%> 
        <div class="support_main_box">
            <div class="box_day"><span>2021년 01월 01일</span></div>
            <div class="box_name"><a>후원자 : </a><span>이주현</span></div>
            <div class="box_amount"><a>후원금액 : </a><span>50,000원</span></div>
            <div class="box_total_amount"><a>누적후원액 : </a><span>158,000원</span></div>
            <div class="box_center"><a>후원기관: </a><span> 품(pum)</span></div>
            <div class="box_receipt"><button class="box_receipt_btn">후원영수증</button></div>
        </div> 
        <%								}	
    	%> 
	
        
		
        
		
        
        
	</div>
    

    </div>
    
</body>
</html>