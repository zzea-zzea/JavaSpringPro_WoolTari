<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<script>
		function my_check() {
			alert("${msg}");
		};
		<c:if test="${not empty msg}">
		my_check();
		</c:if>
	</script>
	<script type="text/javascript">
	
function checkOnlyOne(element) {
	  
	  const checkboxes 
	      = document.getElementsByName("border");
	  
	  checkboxes.forEach((cb) => {
	    cb.checked = false;
	  })
	  
	  element.checked = true;
	}
	
function CheckForm(form){
	
	var chk1 = document.form.check.checked;
	
	if(!chk1){
		alert('비활성화할 게시글을 선택해 주세요.');
		return false;
	}
}
	
	
	</script>
	<%@ include file="../common/_header.jsp"%>
	<form name="form" action="admin_boa_community.woo" method="POST" onSubmit="return CheckForm(this)">
		<input type="hidden" name="mbId" value="${mbPKId}">
		<main class="childcare_main admin">
			<div class="childcare_box admin ma">
				<div class="side_bar ad">
					<ul>
						<li class="side_bar_content mypage"><a
							href="${pageContext.request.contextPath}/admin_mem.woo?">회원
								통계</a></li>
						<li class="side_bar_content mypage"><a
							href="${pageContext.request.contextPath}/admin_cen.woo?">시설
								통계</a></li>
						<li class="side_bar_content mypage on"><a
							href="${pageContext.request.contextPath}/admin_boa.woo?">게시글
								통계</a></li>
						<li class="side_bar_content mypage "><a
							href="${pageContext.request.contextPath}/admin_sup.woo?">후원
								통계</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>게시글 통계</h2>
							<div class="button_def">
								<button type="submit" class="del_btn">비활성화</button>
							</div>
						</div>
						<div class="childcare_content my">
							<div class="table-wrap">
								<table class="tables myaccordion table-hover" id="accordion">
									<thead>
										<tr>
											<th>#</th>
											<th>제목</th>
											<th>내용</th>
											<th>작성자</th>
											<th>조회수</th>
											<th>게시글 상태</th>
											<th>작성 날짜</th>
											<th>조회 하기</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty CtList}">
											<c:forEach var="ct" items="${CtList}" varStatus="vs">
												<tr data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne"
													class="collapsed">
													<th scope="row"><input type="checkbox" id="check"
														value="${ct.board_index}" name="border" onclick='checkOnlyOne(this)'></th>
													<td><c:out value="${ct.title}" /></td>
													<td><c:out value="${ct.content}" /></td>
													<td><c:forEach var="mem" items="${member}">
															<c:if test="${mem.memberIndex eq ct.member_index}">
																 ${mem.nickName}
															</c:if>
														</c:forEach></td>
													<td><c:out value="${ct.views}" /></td>
													<td><c:if test="${ct.is_board eq 0}">활성화</c:if> 
														<c:if test="${ct.is_board eq 1}">비활성화</c:if> 
													</td>
													<td><fmt:formatDate value="${ct.write_date}"
															pattern="yyyy년 MM월 dd일" /></td>
													<td><a class="btn_selected_gosite"
														href="${pageContext.request.contextPath}/content_view.woo?atId=${ct.board_index}">바로가기</a></td>
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