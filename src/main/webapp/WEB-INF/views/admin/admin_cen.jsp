<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" lang="javaScript">
$(document).ready( function() {
	$(".hide").hide();
	var local_si= '<c:out value="${local_si}"/>';
	var type_si = ["전체","서울","부산","대구","인천","광주","대전","울산","경기","강원","충북","충남","전북","전남","경북","경남","제주"];
	for(var z = 0 ; z < type_si.length ; z++){
		if(type_si[z]==local_si){
			$("#localsel").val(type_si[z]).prop("selected", true);
		}
	}
});
function panTo() {
	var selOp = document.getElementById("localsel").options.selectedIndex;
	if (selOp == 0) {
			location.href = "info_center.woo?si=전체";
		} else if (selOp == 1) {
			location.href = "info_center.woo?si=서울";
		} else if (selOp == 2) {
			location.href = "info_center.woo?si=부산";
		} else if (selOp == 3) {
			location.href = "info_center.woo?si=대구";
		} else if (selOp == 4) {
			location.href = "info_center.woo?si=인천";
		} else if (selOp == 5) {
			location.href = "info_center.woo?si=광주";
		} else if (selOp == 6) {
			location.href = "info_center.woo?si=대전";
		} else if (selOp == 7) {
			location.href = "info_center.woo?si=울산";
		} else if (selOp == 8) {
			location.href = "info_center.woo?si=경기";
		} else if (selOp == 9) {
			location.href = "info_center.woo?si=강원";
		} else if (selOp == 10) {
			location.href = "info_center.woo?si=충북";
		} else if (selOp == 11) {
			location.href = "info_center.woo?si=충남";
		} else if (selOp == 12) {
			location.href = "info_center.woo?si=전북";
		} else if (selOp == 13) {
			location.href = "info_center.woo?si=전남";
		} else if (selOp == 14) {
			location.href = "info_center.woo?si=경북";
		} else if (selOp == 15) {
			location.href = "info_center.woo?si=경남";
		} else if (selOp == 16) {
			location.href = "info_center.woo?si=제주";
		}
	}
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="admin_cen.woo">
		<input type="hidden" name="mbId" value="${mbPKId}">
		<main class="childcare_main admin">
			<div class="childcare_box admin ma">
				<div class="side_bar ad">
					<ul>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/admin_mem.woo?">회원 통계</a></li>
						<li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/admin_cen.woo?si=전체">시설 통계</a></li>
						<li class="side_bar_content mypage "><a href="${pageContext.request.contextPath}/admin_boa.woo?">게시글 통계</a></li>
						<li class="side_bar_content mypage "><a href="${pageContext.request.contextPath}/admin_sup.woo?">후원 통계</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>시설 통계</h2>
							<div class="button_def">
								<select class="selectpicker le" data-size="5" id="localsel" name="local_si">
									<option value="전체" selected>전체</option>
									<option value="서울">서울</option>
									<option value="부산">부산</option>
									<option value="대구">대구</option>
									<option value="인천">인천</option>
									<option value="광주">광주</option>
									<option value="대전">대전</option>
									<option value="울산">울산</option>
									<option value="경기">경기</option>
									<option value="강원">강원</option>
									<option value="충북">충북</option>
									<option value="충남">충남</option>
									<option value="전북">전북</option>
									<option value="전남">전남</option>
									<option value="경북">경북</option>
									<option value="경남">경남</option>
									<option value="제주">제주</option>
								</select>
								<button class="sea_btn" onclick="panTo()">검색</button>
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
											<th>지역시</th>
											<th>지역구</th>
											<th>시설명</th>
											<th>시설구분</th>
											<th>전화번호</th>
											<th>시설주소</th>
											<th class="hide">위도</th>
											<th class="hide">경도</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty LoList}">
											<c:forEach var="lo" items="${LoList}" varStatus="vs">
												<tr data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne"
													class="collapsed">
													<th scope="row"><input type="checkbox"></th>
													<td><c:out value="${lo.local_si}" /></td>
													<td><c:out value="${lo.local_gu}" /></td>
													<td><c:out value="${lo.facility_name}" /></td>
													<td><c:out value="${lo.facility_cate eq 1 ? '공동생활지원' : '기본생활시설'}" /></td>
													<td><c:out value="${lo.phone_num}" /></td>
													<td><c:out value="${lo.facility_add}" /></td>
													<td class="lat hide"><c:out value="${lo.latitude}" /></td>
													<td class="lng hide"><c:out value="${lo.hardness}" /></td>
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