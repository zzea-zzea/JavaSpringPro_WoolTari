<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="content_view.woo">
	<main class="content_view_main">
		<div id="border">
			<div class="community_first_view">
				<div class="community_first_view_title">
					<h3>울타리 한가정부모커뮤니티.</h3>
				</div>
				<!-- community_first_view_title -->
				<hr>
				<div class="community_content_view">
					<div class="community_content_view_title">
						<div class="community_imfo">
							<dl>
								<dt>카테고리</dt>
								<dd>${ct.cate}</dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>제목</dt>
								<dd>${ct.title}</dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>작성일</dt>
								<dd>${ct.write_date}</dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>조회</dt>
								<dd>${ct.views}</dd>
							</dl>
						</div>
						<!-- community_imfo -->
						<!-- community_imfo_retouch_delet -->
					</div>
					<!-- community_content_view_title -->
				</div>
				<!-- community_content_view -->
				<div class="community_content_view_imfo">
					<p>${ct.content}</p>
				</div>
				<!-- community_content_view_imfo -->
				<div class="image" id="image">
					<div class="col-md-8">
						<div class="row">
							<c:if test="${not empty param['totalMB']}">
						<span class="unit_mb" style="color: blue">
							<b> 총 <c:out value="${param.countFiles}" 
								default="0"/>  개
							 파일들용량: ${param.totalMB}MB</b>
						</span>
					</c:if>
					
					<c:if test="${fpCount gt 0}">
						<c:forEach var="fp" items="${fps}" varStatus="vs">
						 <%@ include file="_file.jsp" %>
						</c:forEach>					
					</c:if>
					<c:if test="${fpCount eq 0}">
						파일이 없어요!
					</c:if>
						</div>
					</div>
				</div>
				<div></div>
				<div class="community_imfo_retouch_delet">
					<input type="button" value="삭제" class="btn_content"
						onclick="delete_check()"> <input type="button" value="수정"
						class="btn_content"
						onclick="retouch_check()">
				</div>
				<div class="community_comment_box">
					<div class="all_comment">댓글 1개</div>
					<br>
					<div class="community_comment">
						<input type="image" src="${path}/resources/img/reply/man.png"
							class="comment_image"> <input type="text"
							placeholder="댓글을 입력해주세요" class="comment" size="70px"> <input
							type="button" value="등록" class="comment_sumit"
							onclick="input_check()">
					</div>
					<!-- community_comment -->
					<div class="reply">
						<div class="reply_image">
							<input type="image" src="${path}/resources/img/reply/man.png">
						</div>
						<div class="reply_name">
							아무개
							<div class="reply_date">2020-07-21-21-12-33</div>
						</div>
						<div class="reply_show">댓글입니다 아무개가 썻어요</div>
						<div class="reply_del_ret">
							<button class="input_new_reply">답글쓰기</button>
							&nbsp;<a role="button" class="layer_button" onclick="reply_delete_check()">삭제</a> <a
								role="button" class="layer_button">수정</a>
						</div>
						<div class="community_reply" id="a">
							<input type="image" src="${path}/resources/img/reply/woman.png"
								class="comment_image_re"> <input type="text"
								placeholder="댓글을 입력해주세요" class="reply_re" size="70px"> <input
								type="button" value="등록" class="reply_sumit"
								onclick="input_check()"> <input type="reset" value="취소"
								class="reply_cancle">
						</div>
					</div>
				</div>
				<!-- community_comment_box -->
				<div class="blank"></div>
			</div>
			<!-- community_first_view -->
		</div>
		<!-- border -->
		</main>
	</form>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(
		$('input_new_reply').click(function(){
			$('#a').toggle();
		})
		);
</script>
<script>
	function delete_check() {
		var answer = confirm("삭제하시겠습니까?.")
		if (answer == true) {
			alert("삭제되었습니다.");
			location.replace("${pageContext.request.contextPath}/content.woo");
		} else {
		}
	}
	function reply_delete_check() {
		var answer = confirm("삭제하시겠습니까?.")
		if (answer == true) {
			alert("삭제되었습니다.");
			location.replace("${pageContext.request.contextPath}/content_view.woo");
		} else {
		}
	}
	function input_check() {
		var answer = confirm("등록하시겠습니까?.")
		if (answer == true) {
			alert("등록되었습니다.");
			location.replace("${pageContext.request.contextPath}/content_view.woo");
		} else {
		}
	}
	function retouch_check() {
		var answer = confirm("수정하시겠습니까?.")
		if (answer == true) {
			alert("수정되었습니다.");
			location
					.replace('${pageContext.request.contextPath}/retouch_content.woo');
		} else {
		}
	}
</script>
</html>