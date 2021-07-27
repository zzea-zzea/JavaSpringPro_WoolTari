<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="notice.woo">
		<div class="locate_notice ma">
			<div class="lcoate_title">&nbsp;&nbsp;홈페이지 ▷ 소식 ▶ 커뮤니티</div>
		</div>
		<div id="border">
			<div class="community_first_box">
				<div class="community_title">
					<h3>
						<span style="color: pink">공</span>지사항
					</h3>
				</div>
				<hr>
				<div class="notice_write">
					<div class="notice_main">
						<a href="${pageContext.request.contextPath}/new_notice.woo"><input type="submit"
							class="new_write_btn" value="글쓰기"></a>
					</div>
				</div>
				<br>
				<div class="community_content_table">
					<div class="community_content_table_main">
						<table class="board_list">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>글쓴이</th>
									<th>작성일</th>
									<th>조회</th>
								</tr>
							</thead>

							<tbody>
								<%
									for (int i = 0; i < 15; i++) {
								%>
								<tr>
									<td><%=15 - i%></td>
									<td class="tit"><a href="${pageContext.request.contextPath}/notice_view.woo">울타리 공지사항
											커뮤니티.</a></td>
									<td>관리자</td>
									<td>2021-07-04</td>
									<td>111</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="paging">
				<!-- 			<a href="#" class="bt">첫 페이지</a> -->
				<a href="#" class="bt">이전 페이지</a> <a href="#" class="num on">1</a> <a
					href="#" class="num">2</a> <a href="#" class="num">3</a> <a
					href="#" class="bt">다음 페이지</a>
				<!-- 				 <a href="#" class="bt">마지막 페이지</a>  -->
			</div>
		</div>
	</form>
</body>
</html>