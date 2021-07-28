<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/mypage.css">

<body>
<%@ include file="../common/_header.jsp"%>

   <div class="mypage_box_main">
    <div class="main_choice_box">
        <ul class="choice_menu_tap">
        <li class="menu_tap_info" style="background: rgba( 185, 108, 108, 0.5);">내 정보관리</li>
            <li class="menu_tap_support" onclick="location.href='support.jsp'">후원내역</li>
            <li class="menu_tap_comment" onclick="location.href='comment.jsp'">내 글/댓글</li>
        </ul>
        </div>
    
    <div class="box_main_my">
        
        
		<h3 class="box_main_my_title">내 정보관리</h3>
		<div class="box_main_my_info">
			 
				<header class="info_title">개인정보</header>
                <br><br><br>
				<div class="info_name" ><a>이름</a><span>이주현</span></div>
                <div class="info_nick" ><a>별명</a><input class="info_input"></div>
				<div class="info_birthday"><a>생년월일</a><span>970221</span></div>
				<div class="info_gender"><a>성별</a>
                    <span>남자</span></div>
				<div class="info_password"><a>비밀번호</a>
                    <input type="password"  class="info_input"></div>
		
		</div>
        
		<div class="box_main_my_contact" >
			<header class="contact_title">연락처 정보</header>
            <br><br><br>
			<div class="contact_email"><a>이메일</a>
            <input class="contact_input"></div>
			<div class="contact_num"><a>휴대전화</a>
                <input class="contact_input"></div>
		</div>
        
        <div class="box_main_my_btn_gup">
        <button class="btn_cancel">취소</button>
        <button class="btn_save">수정완료</button>
        </div>
	</div>


    </div>
</body>
</html>