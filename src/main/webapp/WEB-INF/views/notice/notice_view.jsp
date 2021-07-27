<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	function show() {
		var x = document.getElementById("a");
		x.style.visibility = "visible";
	}
	function noshow() {
		var x = document.getElementById("a");
		x.style.visibility = "hidden";
	}
	function delete_check() {
		var answer = confirm("삭제하시겠습니까?.")
		if (answer == true) {
			alert("삭제되었습니다.");
			location.replace('${pageContext.request.contextPath}/notice.woo');
		} else {
		}
	}
	function input_check() {
		var answer = confirm("등록하시겠습니까?.")
		if (answer == true) {
			alert("등록되었습니다.");
			location.replace('${pageContext.request.contextPath}/notice_view.woo');
		} else {
		}
	}
</script>
<body>
	<%@ include file="../common/_link.jsp"%>
	<form action="notice_view.woo">
		<div class="locate_notice_view ma">
			<div class="lcoate_title">&nbsp;&nbsp;홈페이지 ▷ 소식 ▷ 공지사항 ▶ 공지사항
				보기</div>
		</div>
		<div id="border">
			<div class="community_first_view">
				<div class="community_first_view_title">
					<h3>울타리 새로운 공지사항</h3>
				</div>
				<!-- community_first_view_title -->
				<hr>
				<div class="community_content_view">
					<div class="community_content_view_title">
						<div class="community_imfo">
							<dl>
								<dt>카테고리</dt>
								<dd>공지 사항</dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>글쓴이</dt>
								<dd>관리자</dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>작성일</dt>
								<dd>2021.7.04</dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>조회</dt>
								<dd>33</dd>
							</dl>
						</div>
						<!-- community_imfo -->
						<!-- community_imfo_retouch_delet -->
					</div>
					<!-- community_content_view_title -->
				</div>
				<!-- community_content_view -->
				<div class="community_content_view_imfo">동해 물과 백두산이 마르고 닳도록
					하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세. 남산 위에 저 소나무,
					철갑을 두른 듯 바람 서리 불변함은 우리 기상일세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세.</div>
				<!-- community_content_view_imfo -->
				<div class="image" id="image">
					<div class="col-md-8">
						<div class="row">
							<%@ include file="../community/image_modal.jsp"%>
						</div>
					</div>
				</div>
				<div></div>
				<div class="community_imfo_retouch_delet">
					<input type="button" value="삭제" class="btn_content"
						onclick="delete_check()"> <input type="button" value="수정"
						class="btn_content" onclick="location='${pageContext.request.contextPath}/retouch_notice.woo'">
				</div>
				<!-- community_comment_box -->
				<div class="blank"></div>
			</div>
			<!-- community_first_view -->
		</div>
		<!-- border -->
	</form>
</body>
</html>