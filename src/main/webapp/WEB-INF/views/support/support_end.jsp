<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script>
	function showMyPage(mbId) {

		location.href = '${pageContext.request.contextPath}/mypage.woo?mbId='
				+ mbId;
		// 동기방식 get 이동... 			
	}
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support_end.woo">
		<main class="support_main">
			<div class="support_box s ma">
				<div class="support_content_title">
					<h2>후원 완료</h2>
					<h3>
						<b>이주현</b> 님의 후원이 완료 되었습니다.
					</h3>
					<br> <img class="end_sup"
						src="${path}/resources/img/end_sup.png" alt="img">
					<!-- 					<span>후원자님의 소중한 나눔으로 세상에서 소외된 이웃에게 내일을 밝게 비춰주셔서 감사합니다.</span><br> -->
					<div class="nextbtn">
						<a onclick="showMyPage('${mbPKId}')">마이페이지 바로 가기</a>
					</div>
					<br><span>* 자세한 내용은 <b>'마이페이지 > 내 후원 내역 조회'</b> 에서 확인이 가능합니다</span>
				</div>
			</div>
		</main>
	</form>
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>