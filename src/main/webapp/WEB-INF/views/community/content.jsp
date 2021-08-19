<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script type="text/javascript">
	function showOneArticle(atId) {
		location.href = '${pageContext.request.contextPath}/content_view.woo?atId=' + atId;
	}

	function showLoginPage() {
		alert('로그인 후 이용가능');
		location.href = '${pageContext.request.contextPath}/login.woo';
	}
	$(document).ready(function() {
		var num = "${ctSize}";
		var step;
		for (step = 0; step < num; step++)
			console.log(num);
		$('#a').text(step);
	});
	$(document).ready(function() {
		var b = "${param.keyword}";
		b = $("#s_sel option:selected").val();
	});
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<main class="content_main">
		<div id="border">
			<div class="community_first_box ma">
				<div class="community_title">
					<h2 class="">커뮤니티</h2>
				</div>
				<div class="search">
					<div class="search_main">
						<c:if test="${not empty mbLoginName}">
							<a href="${pageContext.request.contextPath}/new_content.woo"><input
								type="submit" class="new_write_btn" value="글쓰기"></a>
						</c:if>
					</div>
				</div>
				<br>
				<div class="community_content_table">
					<div class="community_content_table_main">
						<table class="tables">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>카테고리</th>
									<th>글쓴이</th>
									<th>작성일</th>
									<th>조회</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty ctList}">
									<h4>게시글이 현재 하나도 없네요!</h4>
								</c:if>
								<c:if test="${not empty ctList}">
									<c:forEach var="ct" items="${ctList}" varStatus="vs">
										<c:if test="${not empty mbLoginName}">
											<tr onclick="showOneArticle('${ct.board_index}')">
										</c:if>
										<c:if test="${empty mbLoginName}">
											<tr onclick="showLoginPage()">
										</c:if>
										<td><c:out value="${ctSize}" default="0" /></td>
										<td><c:out value="${ct.title}" default="제목없음" /></td>
										<td><c:if test="${ct.cate eq 1}">일상</c:if> <c:if
												test="${ct.cate eq 2}">지원정보</c:if> <c:if
												test="${ct.cate eq 3}">병원정보</c:if> <c:if
												test="${ct.cate eq 4}">시설</c:if> <c:if
												test="${ct.cate eq 5}">육아정보</c:if> <c:if
												test="${ct.cate eq 6}">무료나눔</c:if></td>
										<td><c:out value="${mbLoginList[vs.index]}"
												default="이름없음" /></td>
										<td><fmt:formatDate value="${ct.write_date}"
												pattern="yyyy년 MM월 dd일" /></td>
										<td><c:out value="${ct.views}" default="0" /></td>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="paging">
				<c:if test="${pn > 1}">
					<a href="${pageContext.request.contextPath}/content.woo?pg=${pn-1}" class="bt">이전 페이지</a>
				</c:if>
				<c:forEach begin="1" end="${maxPg}" step="1" varStatus="vs">
					<c:if test="${vs.current eq pn}">
						<a><b style="color: #6c757d; font-size: 1.2em;">${vs.current}</b></a>
					</c:if>
					<c:if test="${vs.current ne pn}">
						<a href="${pageContext.request.contextPath}/content.woo?pg=${vs.current}">${vs.current}</a>
					</c:if>
				</c:forEach>
				<c:if test="${pn < maxPg}">
					<a href="${pageContext.request.contextPath}/content.woo?pg=${pn+1}" class="bt">다음 페이지</a>
				</c:if>
			</div>
		</div>
	</main>
</body>
</html>