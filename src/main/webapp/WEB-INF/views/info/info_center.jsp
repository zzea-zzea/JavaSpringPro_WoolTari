<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2858e3180808590dc8e575f6f6b84ef&libraries=services"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" lang="javaScript">

let map;
$(document).ready(function(){
	$(".hide").hide();
	
	var centerLat = '<c:out value="${centerLat}"/>';
	console.log(centerLat);
	var centerLng= '<c:out value="${centerLng}"/>';
	console.log(centerLng);
	var local_si= '<c:out value="${local_si}"/>';
	console.log(local_si);

	var latArr = document.getElementsByClassName("lat");
	var lngArr = document.getElementsByClassName("lng");
	var center_name = document.getElementsByClassName("center_name");
	
	var type_si = ["서울","부산","대구","인천","광주","대전","울산","경기","강원","충북","충남","전북","전남","경북","경남","제주"];
	for(var z = 0 ; z < type_si.length ; z++){
		if(type_si[z]==local_si){
			$("#localsel").val(type_si[z]).prop("selected", true);
		}
	}

	var positions = [];
	
	for (var i = 0; i < latArr.length; i++) {	
		positions.push(createMarkerFunc(latArr[i].innerText, lngArr[i].innerText ,center_name[i].innerText));
	}
	
	var mapContainer = document.getElementById('map'), mapOption = {
		center : new kakao.maps.LatLng(parseFloat(centerLat), parseFloat(centerLng)),
		level : 10
	};
	
	map = new kakao.maps.Map(mapContainer, mapOption);

	for (var i = 0; i < positions.length; i++) {
		var marker = new kakao.maps.Marker({
			map : map, 
			position : positions[i].latlng
		});

		var infowindow = new kakao.maps.InfoWindow({
			content : positions[i].content
		});

		kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
		kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	}

	function makeOverListener(map, marker, infowindow) {
		return function() {
			infowindow.open(map, marker);
		};
	}

	function makeOutListener(infowindow) {
		return function() {
			infowindow.close();
		};
	}
	
	function createMarkerFunc(lat, lng,center_name) {
		console.log("center_name : ", center_name);
		console.log("lat : ", lat);
		console.log("lng : ", lng);
		
		// 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
		 var positions = {
					content : '<div style="width:150px;text-align:center;padding:6px 0;">'+center_name+'</div>',
					latlng : new kakao.maps.LatLng(lat,lng)
				};
		return positions;
	}
});

function panTo() {
	var selOp = document.getElementById("localsel").options.selectedIndex;
	if (selOp == 0) {
			location.href = "info_center.woo?si=서울";
		} else if (selOp == 1) {
			location.href = "info_center.woo?si=부산";
		} else if (selOp == 2) {
			location.href = "info_center.woo?si=대구";
		} else if (selOp == 3) {
			location.href = "info_center.woo?si=인천";
		} else if (selOp == 4) {
			location.href = "info_center.woo?si=광주";
		} else if (selOp == 5) {
			location.href = "info_center.woo?si=대전";
		} else if (selOp == 6) {
			location.href = "info_center.woo?si=울산";
		} else if (selOp == 7) {
			location.href = "info_center.woo?si=경기";
		} else if (selOp == 8) {
			location.href = "info_center.woo?si=강원";
		} else if (selOp == 9) {
			location.href = "info_center.woo?si=충북";
		} else if (selOp == 10) {
			location.href = "info_center.woo?si=충남";
		} else if (selOp == 11) {
			location.href = "info_center.woo?si=전북";
		} else if (selOp == 12) {
			location.href = "info_center.woo?si=전남";
		} else if (selOp == 13) {
			location.href = "info_center.woo?si=경북";
		} else if (selOp == 14) {
			location.href = "info_center.woo?si=경남";
		} else if (selOp == 15) {
			location.href = "info_center.woo?si=제주";
		}
	}

</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<main class="center_main">
		<div class="center_box ma">
			<div class="center_content_title">
				<h2>시설 정보</h2>
				<span>해당 지역 선택시 하단의 리스트를 통해 시설정보를 알아보세요!</span>
			</div>
			<form action="info_center.woo" method="get">
				<div class="center_content_search">
					<select class="selectpicker le" data-size="5" id="localsel" name="local_si">
						<option value="서울" selected>서울</option>
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
					<div class="search_btn">
						<a id="locabtn" onclick="panTo()">검색</a>
					</div>
				</div>
			</form>
			<div class="center_content_location" id="map"></div>
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
								<th class="hide">위도</th>
								<th class="hide">경도</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="lo" items="${lovo}" varStatus="lov">
								<tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
									<td class="type_si"><c:out value="${lo.local_si}" /></td>
									<td><c:out value="${lo.local_gu}" /></td>
									<td class="center_name"><c:out value="${lo.facility_name}" /></td>
									<td><c:out value="${lo.facility_cate eq 1 ? '공동생활지원' : '기본생활시설'}" /></td>
									<td><c:out value="${lo.phone_num}" /></td>
									<td id="add_local"><c:out value="${lo.facility_add}" /></td>
									<td class="lat hide"><c:out value="${lo.latitude}" /></td>
									<td class="lng hide"><c:out value="${lo.hardness}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>