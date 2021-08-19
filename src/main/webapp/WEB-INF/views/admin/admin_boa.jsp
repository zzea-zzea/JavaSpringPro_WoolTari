<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="admin_boa.woo">
		<input type="hidden" name="mbId" value="${mbPKId}">
		<main class="childcare_main admin">
			<div class="childcare_box admin ma">
				<div class="side_bar ad">
					<ul>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/admin_mem.woo?">회원 통계</a></li>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/admin_cen.woo?">시설 통계</a></li>
						<li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/admin_boa.woo?">게시글 통계</a></li>
						<li class="side_bar_content mypage "><a href="${pageContext.request.contextPath}/admin_sup.woo?">후원 통계</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>게시글 통계</h2>
							<div class="button_def">
								<button class="cre_btn">추가</button>
								<button class="ref_btn">수정</button>
								<button class="del_btn">삭제</button>
							</div>
						</div>
						<div class="childcare_content my">
							<div class="table-wrap">
								<table class="tables myaccordion table-hover" id="accordion">
									<thead>
										<tr>
											<th>#</th>
											<th>제목</th>
											<th>작성자</th>
											<th>조회수</th>
											<th>작성 날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty CtList}">
											<c:forEach var="ct" items="${CtList}" varStatus="vs">
												<tr data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne"
													class="collapsed">
													<th scope="row"><input type="checkbox"></th>
													<td><c:out value="${ct.title}" /></td>
													<td>
														<c:forEach var="mem" items="${member}">
															<c:if test="${mem.memberIndex eq ct.member_index}">
																 ${mem.nickName}
															</c:if>
														</c:forEach>
													</td>
													<td><c:out value="${ct.views}" /></td>
													<td><c:out value="${ct.write_date}" /></td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</section>
				</div>
			</div>
		</main>
	</form>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>