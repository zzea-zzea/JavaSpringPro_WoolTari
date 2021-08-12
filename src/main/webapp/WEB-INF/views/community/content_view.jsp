<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script>
	function del(atId) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			location.href='delete.woo?atId='+${community.board_index};
		}
	}	
	$(document).ready(function() {
		var check = "${community.cate}";
		var msg = "";
		switch(check) {
		case "1":
			msg = "일상";
			break;
		case "2":
			msg = "지원정보";
			break;
		case "3":
			msg = "병원정보";
			break;
		case "4":
			msg = "시설";
			break;
		case "5":
			msg = "육아정보";
			break;
		case "6":
			msg = "무료나눔";
			break;
		
		}
			$('#a').text(msg);
	});
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
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
								<dd id="a"></dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>제목</dt>
								<dd><c:out value="${community.title}" default="제목없음"/></dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>작성일</dt>
								<dd><fmt:formatDate value="${community.write_date}" pattern="yyyy년 MM월 dd일"/></dd>
							</dl>
							<span>|</span>
							<dl>
								<dt>조회</dt>
								<dd><c:out value="${community.views}" default="0"/></dd>
							</dl>
						</div>
						<!-- community_imfo -->
						<!-- community_imfo_retouch_delet -->
					</div>
					<!-- community_content_view_title -->
				</div>
				<!-- community_content_view -->
				<div class="community_content_view_imfo">
					<p><c:out value="${community.content}" /></p>
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
				<div class="community_imfo_retouch_delet" style="text-align: center;">
			<c:if test="${not empty mbLoginName}"><!-- 누군가 로그인중.. -->
				<c:if test="${mbPKId eq community.member_index}"> <!-- 글쓴이 본인인증 -->
					<a class="btn_content" href="${pageContext.request
						.contextPath}/retouch_content.woo?atId=${community.board_index}">[수정]</a>
					<a class="btn_content" href="#" onclick="del(${community.board_index})">[삭제]</a>
				</c:if>
			</c:if>
				</div>
					<c:out value="${asSize}" default="0" />개
					<br>
					<form action="${pageContext.request.contextPath}/Writecomment.woo" method="post">
						<div class="community_comment">
							<input type="hidden" name="boardIndex" value="${!empty CV ? CV.boardId: param.atId}">
							<input type="hidden" name="memberIndex" value="${mbPKId}">
								<input type="text"
								placeholder="댓글을 입력해주세요" class="comment" name="content" size='70'> <input type="submit" value="등록"
								class="comment_sumit">
						</div>
					</form>
					<!-- community_comment -->
					<div class="reply">
						<c:choose>
							<c:when test="${!empty asSize}">
								<ul>
									<c:forEach var="as" items="${asList}">
												<div class="reply_name">
												<c:if test="${mbLoginList.memberIndex eq as.memberIndex}">
													${mbLoginList.nickname}
												</c:if>
													<div class="reply_date"><fmt:formatDate value="${as.createDate}" pattern="yyyy/MM/dd HH:mm:ss" /></div>
												</div>
												<div class="reply_show">${as.content}</div>
												<form action="${pageContext.request.contextPath}/retouch_comment.woo">
												<input type="hidden" name="boardIndex" value="${atId}">							
												<input type="hidden" name="memberIndex" value="${mbPKId}">		
												<input type="hidden" name="commentId" value="${commentId}">
												<div class="retouch_reply" style="display: none"><input type="text"
								value="${as.content}" class="comment" name="content" size='70'> <input type="submit" value="수정"
								class="retouch_submit"></div>
								</form>
												<div class="reply_del_ret">
													<button class="input_new_reply">댓글 쓰기</button>
													<c:if test="${as.memberIndex eq mbPKId}">
													&nbsp;<a role="button" class="layer_button" onclick="comment_delete_check()">삭제</a> <a
														 class="retouch_button">수정</a>
														</c:if>
												</div>
								</c:forEach>
								</ul>
							</c:when>
							<c:when test="${empty asSize}">
								<i>아직 댓글이 하나도 없습니다! :)</i>
							</c:when>
						</c:choose>
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
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
// 		$('input_new_reply').click(function(){
// 			$('#a').toggle();
// 		})
		$('.retouch_button').click(function() {
			$('.retouch_reply').hide();
			$('.retouch_reply').show();	
		});
		
});
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