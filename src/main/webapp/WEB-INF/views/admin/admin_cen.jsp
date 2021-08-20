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
			$("#sel_si").val(type_si[z]).prop("selected", true);
		}
	}
});
function panTo() {
	var selOp = document.getElementById("sel_si").options.selectedIndex;
	if (selOp == 0) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=전체";
		} else if (selOp == 1) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=서울";
		} else if (selOp == 2) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=부산";
		} else if (selOp == 3) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=대구";
		} else if (selOp == 4) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=인천";
		} else if (selOp == 5) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=광주";
		} else if (selOp == 6) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=대전";
		} else if (selOp == 7) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=울산";
		} else if (selOp == 8) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=경기";
		} else if (selOp == 9) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=강원";
		} else if (selOp == 10) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=충북";
		} else if (selOp == 11) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=충남";
		} else if (selOp == 12) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=전북";
		} else if (selOp == 13) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=전남";
		} else if (selOp == 14) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=경북";
		} else if (selOp == 15) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=경남";
		} else if (selOp == 16) {
			location.href = "admin_cen.woo?mbId="+mbId+"&local_si=제주";
		}
	}
</script>
<body class="modal_body">
	<%@ include file="../common/_header.jsp"%>
	<!-- 	<form action="admin_cen.woo"> -->
	<input type="hidden" name="mbId" value="${mbPKId}">
	<main class="childcare_main admin">
		<div class="childcare_box admin ma">
			<div class="side_bar ad">
				<ul>
					<li class="side_bar_content mypage"><a
						href="${pageContext.request.contextPath}/admin_mem.woo?">회원 통계</a></li>
					<li class="side_bar_content mypage on"><a
						href="${pageContext.request.contextPath}/admin_cen.woo?">시설 통계</a></li>
					<li class="side_bar_content mypage "><a
						href="${pageContext.request.contextPath}/admin_boa.woo?">게시글
							통계</a></li>
					<li class="side_bar_content mypage "><a
						href="${pageContext.request.contextPath}/admin_sup.woo?">후원 통계</a></li>
				</ul>
			</div>
			<div class="info_content">
				<section class="childcare_section">
					<div class="childcare_section_title">
						<h2>시설 통계</h2>
						<div class="button_def">
							<select class="selectpicker le" data-size="5" id="sel_si"
								name="local_si">
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
							<button class="cre_btn" id="modal-open-btn_new">추가</button>
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
									<c:if test="${not empty adlovo}">
										<c:forEach var="adlo" items="${adlovo}" varStatus="lov">
											<tr data-toggle="collapse" data-target="#collapseOne"
												aria-expanded="true" aria-controls="collapseOne"
												class="collapsed">
												<td><input type="checkbox"></td>
												<td><c:out value="${adlo.local_si}" /></td>
												<td><c:out value="${adlo.local_gu}" /></td>
												<td class="center_name"><c:out
														value="${adlo.facility_name}" /></td>
												<td><c:out
														value="${adlo.facility_cate eq 1 ? '공동생활지원' : '기본생활시설'}" /></td>
												<td><c:out value="${adlo.phone_num}" /></td>
												<td id="add_local"><c:out value="${adlo.facility_add}" /></td>
												<td class="lat hide"><c:out value="${adlo.latitude}" /></td>
												<td class="lng hide"><c:out value="${adlo.hardness}" /></td>
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
					<svg xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="Capa_1" x="0px" y="0px" viewBox="0 0 52.001 52.001"
						style="enable-background: new 0 0 52.001 52.001;"
						xml:space="preserve">
						<g>
						<g>
						<path style="fill:#030104;"
							d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486    c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757    c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485    c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0    C50.086,47.9,50.086,44.101,47.743,41.758z" /></g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g> </g>
						<g></g>
						<g> </g>
						<g></g>
						<g></g>
						<g></g></svg>
				</button>
				<div>시설 수정 모달창</div>
			</div>
		</div>

	</div>

	<div id="modal-overlay-new">

		<div class="modal-wrapper-new">
			<div class="modal-box-new">
				<button id="modal-close-btn-new" class="modal-close-btn-new">
					<svg xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="Capa_1" x="0px" y="0px" viewBox="0 0 52.001 52.001"
						style="enable-background: new 0 0 52.001 52.001;"
						xml:space="preserve">
						<g>
						<g>
						<path style="fill:#030104;"
							d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486    c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757    c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485    c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0    C50.086,47.9,50.086,44.101,47.743,41.758z" /></g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g></g>
						<g> </g>
						<g></g>
						<g> </g>
						<g></g>
						<g></g>
						<g></g></svg>
				</button>
				<div>시설 추가 모달창</div>
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
    
    const modalOpenBtnNew = document.getElementById("modal-open-btn_new");
    const modalCloseBtnNew = document.getElementById("modal-close-btn-new");
    const modalWrapperNew = document.querySelector(".modal-wrapper-new");

          console.log(modalWrapperNew.style);

          modalOpenBtnNew.addEventListener("click", () => {
    modalWrapperNew.style.display = "flex";
           });

    modalCloseBtnNew.addEventListener("click", () => {
        modalWrapperNew.style.display = "none";
    });
	</script>
</body>
</html>