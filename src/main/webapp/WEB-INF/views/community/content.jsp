<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
	<%@ include file="../common/_header.jsp"%>
<!-- 	<form action="content.woo"> -->
	<main class="content_main"> 
				<div id="border">
				<div class="community_first_box">
					<div class="community_title">
						<h3>
							<span style="color: pink">커</span>뮤니티
						</h3>
					</div>
					<hr>
					<div class="search">
						<div class="search_main">
							<select class="s_sel">
								<option value="0" selected="selected">= 선택 =</option>
								<option value="1">일상</option>
								<option value="2">지원 정보</option>
								<option value="3">병원 정보</option>
								<option value="4">시설 정보</option>
								<option value="5">육아 정보</option>
								<option value="6">무료 나눔</option>
							</select>
							<button class="search_btn">검색</button>
							
							<a href="${pageContext.request.contextPath}/new_content.woo"><input type="submit"
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
										<td class="tit"><a href="${pageContext.request.contextPath}/content_view.woo">울타리 한가정부모
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
					<a href="#" class="bt">이전 페이지</a> <a href="#" class="num on">1</a>
					<a href="#" class="num">2</a> <a href="#" class="num">3</a> <a
						href="#" class="bt">다음 페이지</a>
					<!-- 				 <a href="#" class="bt">마지막 페이지</a>  -->
				</div>
			</div>
			</main>
<!-- 	</form> -->
</body>
</html>