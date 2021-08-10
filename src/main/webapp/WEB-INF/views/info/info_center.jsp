<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script type="text/javascript">
function panTo() {
	var selBox = document.getElementById("localsel");
	var selOp = document.getElementById("localsel").options.selectedIndex;

	if (selOp == 0) {
		var moveLatLon = new kakao.maps.LatLng(37.564325, 126.985864); // 서울
	} else if (selOp == 1) {
		var moveLatLon = new kakao.maps.LatLng(35.160360, 129.046564); // 부산
	} else if (selOp == 2) {
		var moveLatLon = new kakao.maps.LatLng(35.852325, 128.565325); // 대구
	} else if (selOp == 3) {
		var moveLatLon = new kakao.maps.LatLng(37.509479, 126.705247); // 인천
	} else if (selOp == 4) {
		var moveLatLon = new kakao.maps.LatLng(35.152789, 126.822940); // 광주
	} else if (selOp == 5) {
		var moveLatLon = new kakao.maps.LatLng(36.343772, 127.386738); // 대전
	} else if (selOp == 6) {
		var moveLatLon = kakao.maps.LatLng(35.544153, 129.250905); // 울산
	} else if (selOp == 7) {
		var moveLatLon = new kakao.maps.LatLng(37.610051, 127.227627); // 경기
	} else if (selOp == 8) {
		var moveLatLon = new kakao.maps.LatLng(37.836998, 128.398704); // 강원
	} else if (selOp == 9) {
		var moveLatLon = new kakao.maps.LatLng(36.840788, 127.749801); // 충북
	} else if (selOp == 10) {
		var moveLatLon = new kakao.maps.LatLng(36.606622, 126.876108); // 충남
	} else if (selOp == 11) {
		var moveLatLon = new kakao.maps.LatLng(35.784236, 127.138640); // 전북
	} else if (selOp == 12) {
		var moveLatLon = new kakao.maps.LatLng(34.942881, 126.879671); // 전남
	} else if (selOp == 13) {
		var moveLatLon = new kakao.maps.LatLng(36.339425, 128.888933); // 경북
	} else if (selOp == 14) {
		var moveLatLon = new kakao.maps.LatLng(35.406681, 128.173946); // 경남
	} else if (selOp == 15) {
		var moveLatLon = new kakao.maps.LatLng(33.379081, 126.567569); // 제주
	}
	map.setCenter(moveLatLon);
}
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="info_center.woo" method="get">
		<main class="center_main">
			<div class="center_box ma">
				<div class="center_content_title">
					<h2>시설 정보</h2>
					<span>해당 지역 선택시 하단의 리스트를 통해 시설정보를 알아보세요!</span>
				</div>
				<div class="center_content_search">
					<select class="selectpicker le" data-size="5" id="localsel">
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
					<div class="search_btn"><a id="locabtn" onclick="panTo()">검색</a></div>
				</div>
				<div class="center_content_location" id="map"></div>
				<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2858e3180808590dc8e575f6f6b84ef&libraries=services"></script>
				<script>
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
					mapOption = {
						center : new kakao.maps.LatLng(37.531220, 126.987537), // 지도의 중심좌표
						level : 8
					// 지도의 확대 레벨
					};
					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
					
				</script>
				<div class="childcare_content my">
					<div class="table-wrap cen">
						<table class="tables myaccordion table-hover" id="accordion">
							<thead>
								<tr>
									<th>지역시</th>
									<th>지역구</th>
									<th>시설명</th>
									<th>시설구분</th>
									<th>전화번호</th>
									<th>시설주소</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="lo" items="${lovo}" varStatus="lov">
									<tr data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne"
										class="collapsed">
										<td><c:out value="${lo.local_si}" /></td>
										<td><c:out value="${lo.local_gu}" /></td>
										<td><c:out value="${lo.facility_name}" /></td>
										<td><c:out
												value="${lo.facility_cate eq 1 ? '공동생활지원' : '기본생활시설'}" /></td>
										<td><c:out value="${lo.phone_num}" /></td>
										<td><c:out value="${lo.facility_add}" /></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</main>
	</form>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>