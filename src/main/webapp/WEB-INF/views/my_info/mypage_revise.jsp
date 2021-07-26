<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/mypage.css">

<body>
<%@ include file="../common/_header.jsp"%>

    <div class="box_main">
    <div class="menu_choice_box">
        <ul class="menu_tap">
        <li class="my_info" style="background: rgba( 185, 108, 108, 0.5);">내 정보관리</li>
            <li class="my_support" onclick="location.href='support.jsp'">후원내역</li>
            <li class="my_comment" onclick="location.href='comment.jsp'">내 글/댓글</li>
        </ul>
        </div>
    
    <div class="full">
        
        
		<h3>내 정보관리</h3>
		<div class="my_info">
			 
				<header class="header">개인정보</header>
                <br><br><br>
				<div class="name" ><a>이름</a><span>이주현</span></div>
                <div class="nick" ><a>별명</a><input></div>
				<div class="birthday"><a>생년월일</a><span>970221</span></div>
				<div class="gender"><a>성별</a>
                    <span>남자</span></div>
				<div class="password"><a>비밀번호</a>
                    <input type="password"></div>
		
		</div>
        
		<div class="my_contact" >
			<header class="header">연락처 정보</header>
            <br><br><br>
			<div class="email"><a>이메일</a>
            <input></div>
			<div class="ph_num"><a>휴대전화</a>
                <input></div>
		</div>
        
        <div class="btn_gup">
        <button class="ch_btn">취소</button>
        <button class="save_btn">수정완료</button>
        </div>
	</div>


    </div>
</body>
</html>