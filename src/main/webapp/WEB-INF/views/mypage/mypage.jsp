<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="mypage.woo">
		<main class="childcare_main">
			<div class="childcare_box ma">
				<div class="side_bar">
					<ul>
						<li class="side_bar_content"><a>내정보</a></li>
						<li class="side_bar_content"><a>후원 내역조회</a></li>
						<li class="side_bar_content"><a>내 게시글 조회</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>내 정보 수정</h2>
							<span>변경 하실 회원정보는 여기서 변경 해주세요!</span>
						</div>
						<div class="childcare_content">
							<div class="childcare_content_myinfo">
							
							</div>
							
						</div>
					</section>
				</div>
			</div>
		</main>
	</form>
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>