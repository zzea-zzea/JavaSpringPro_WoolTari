<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<body class="modal_body">
	<%@ include file="../common/_header.jsp"%>
<!-- 	<form action="admin_boa.woo"> -->
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
								<button class="ref_btn" id="modal-open-btn">수정</button>
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
													<td><c:forEach var="mem" items="${member}">
															<c:if test="${mem.memberIndex eq ct.member_index}">
																 ${mem.nickName}
															</c:if>
														</c:forEach></td>
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
<!-- 	</form> -->
	<div id="modal-overlay">
	
	<div class="modal-wrapper">
			<div class="modal-box">
				<button id="modal-close-btn" class="modal-close-btn">
					<svg xmlns="http://www.w3.org/2000/svg"xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"id="Capa_1" x="0px" y="0px" viewBox="0 0 52.001 52.001"style="enable-background: new 0 0 52.001 52.001;"xml:space="preserve"><g><g><path style="fill:#030104;" d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486    c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757    c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485    c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0    C50.086,47.9,50.086,44.101,47.743,41.758z" /></g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g> </g><g></g><g> </g><g></g><g></g><g></g></svg>
				</button>
				<div>
					게시글 수정 모달창
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../common/_script.jsp"%>


	<script>
	const modalOpenBtn = document.getElementById("modal-open-btn");
    const modalCloseBtn = document.getElementById("modal-close-btn");
    const modalWrapper = document.querySelector(".modal-wrapper");

          console.log(modalWrapper.style);

          modalOpenBtn.addEventListener("click", () => {
    modalWrapper.style.display = "flex";
           });

    modalCloseBtn.addEventListener("click", () => {
        modalWrapper.style.display = "none";
    });
	</script>
</body>
</html>