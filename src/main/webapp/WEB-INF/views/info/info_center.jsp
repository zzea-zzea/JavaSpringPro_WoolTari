<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="info_center.woo">
		<main class="center_main">
			<div class="center_box ma">
				<div class="center_content_title">
					<h2>시설 정보</h2>
					<span>해당 지역 선택시 하단의 리스트를 통해 시설정보를 알아보세요!</span>
				</div>
				<div class="center_content_search">
					<select class="selectpicker le" data-size="5">
						<option>서울</option>
						<option>인천</option>
						<option>경기</option>
						<option>강원</option>
						<option>대전</option>
						<option>충북</option>
						<option>충남/세종</option>
						<option>부산</option>
						<option>울산</option>
						<option>경남</option>
						<option>경북</option>
						<option>대구</option>
						<option>광주</option>
						<option>전남</option>
						<option>전주/전북</option>
						<option>제주</option>
					</select> 
					<button>검색</button>
				</div>
				<div class="center_content_location"  id="map"></div>
				<div class="childcare_content my">
					<div class="table-wrap cen">
						<table class="tables myaccordion table-hover" id="accordion">
							<thead>
								<tr>
									<th>NO.</th>
									<th>시설명</th>
									<th>전화번호</th>
									<th>운영시간</th>
									<th>시설주소</th>
									<th>시설약도</th>
								</tr>
							</thead>
							<tbody>
								<tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
									<th scope="row">1</th>
									<td>한빛쉼터</td>
									<td>070-808-4512</td>
									<td>09:00-18:00</td>
									<td>경기도 남양주시 와부읍 덕소리 789번지 336 한빛쉼터</td>
									<td><button class="btn_selected_gosite">길찾기</button></td>
								</tr>
								<tr data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">
									<th scope="row">2</th>
									<td>한빛쉼터</td>
									<td>070-808-4512</td>
									<td>09:00-18:00</td>
									<td>경기도 남양주시 와부읍 덕소리 789번지 336 한빛쉼터</td>
									<td><button class="btn_selected_gosite">길찾기</button></td>
								</tr>
								<tr data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">
									<th scope="row">3</th>
									<td>한빛쉼터</td>
									<td>070-808-4512</td>
									<td>09:00-18:00</td>
									<td>경기도 남양주시 와부읍 덕소리 789번지 336 한빛쉼터</td>
									<td><button class="btn_selected_gosite">길찾기</button></td>
								</tr>
								<tr data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour" class="collapsed">
									<th scope="row">4</th>
									<td>한빛쉼터</td>
									<td>070-808-4512</td>
									<td>09:00-18:00</td>
									<td>경기도 남양주시 와부읍 덕소리 789번지 336 한빛쉼터</td>
									<td><button class="btn_selected_gosite">길찾기</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</main>
	</form>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e2858e3180808590dc8e575f6f6b84ef"></script>
	<script>
		var mapContainer = document.getElementById('map'),   
		mapOption = { center : new kakao.maps.LatLng(33.450701, 126.570667),  level : 9};
		var map = new kakao.maps.Map(mapContainer, mapOption);
		var positions = [ {title : '카카오', latlng : new kakao.maps.LatLng(33.450705, 126.570677)}, {title : '생태연못',	latlng : new kakao.maps.LatLng(33.450936, 126.569477)}, {title : '텃밭',latlng : new kakao.maps.LatLng(33.450879, 126.569940)}, { title : '근린공원',	latlng : new kakao.maps.LatLng(33.451393, 126.570738)} ];
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		for (var i = 0; i < positions.length; i++) {
			var imageSize = new kakao.maps.Size(24, 35);
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			var marker = new kakao.maps.Marker({map : map,  position : positions[i].latlng,  title : positions[i].title, image : markerImage});
		}
	</script>
	<%@ include file="../common/_script.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.selectpicker').selectpicker({
				style : 'btn-info',
				size : 4
			});
		});
	</script>
</body>
</html>