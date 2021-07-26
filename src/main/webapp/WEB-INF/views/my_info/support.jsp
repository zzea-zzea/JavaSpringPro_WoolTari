<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/mypage.css">
    <link rel="stylesheet" href="../css/sup.css">
    
    <body>
    <%@ include file="../common/_header.jsp"%>
    
        <div class="box_main">
    <div class="menu_choice_box">
        <ul class="menu_tap">
        <li class="my_info" onclick="location.href='mypage.jsp'">내 정보관리</li>
            <li class="my_support" style="background: rgba( 185, 108, 108, 0.5);">후원내역</li>
            <li class="my_comment" onclick="location.href='comment.jsp'">내 글/댓글</li>
        </ul>
        </div>
    
    <h3>내 후원내역</h3>
    
    <div class="sup_full">
    	<% 
     	for (int i = 0; i < 5; i++) {
 	%> 
        <div class="sup_box">
            <div class="sup_day"><span>2021년 01월 01일</span></div>
            <div class="sup_name"><a>후원자 : </a><span>이주현</span></div>
            <div class="sup_amount"><a>후원금액 : </a><span>50,000원</span></div>
            <div class="sup_total_amount"><a>누적후원액 : </a><span>158,000원</span></div>
            <div class="sup_center"><a>후원기관: </a><span> 품(pum)</span></div>
            <div class="sup_receipt"><button class="sup_receipt_btn">후원영수증</button></div>
        </div> 
        <%								}	
    	%> 
	
        
		
        
		
        
        
	</div>
    

    </div>
    
</body>
</html>