<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		LocatlonBinding();
	}
	function LocatlonBinding() {
		var childList;
		var option;
		var name = $("#parent option:checked").text();
		switch ($("#parent").val()) {
		case "서울시": chiledList 
			= [
				"종로구", "중구", "용산구", "성동구", "광진구",
				"동대문구", "중랑구", "성북구", "강북구", "도봉구",
				"노원구", "은평구", "서대문구", "마포구", "양천구",
				"강서구", "구로구", "금천구", "영등포구", "동작구",
				"관악구", "서초구", "강남구", "송파구", "강동구"
				];
		break;
		case "경기도": chiledList
			= [
				"고양시", "과천시", "광명시", "광주시", "구리시",
				"군포시", "김포시", "남양주시", "동두천시", "부천시",
				"성남시", "수원시", "시흥시", "안산시", "안성시",
				"안양시", "양주시", "여주시", "오산시", "용인시", "의왕시", 
				"의정부시", "이천시", "파주시", "평택시", "포천시", "하남시",
				"화성시", "가평군", "양평군", "연천군"];
		break;

		case "인천시": chiledList
		= [	
			"계양구", "남동구", "동구", "미추홀구", "부평구",
			"서구", "수구", "중구", "강화군", "옹진군"
			];
		break;
		
		case "부산시": chiledList
		= [	
			"강서구", "금정구", "남구", "동구", "동래구",
			"부산진구", "북구", "사상구", "사하구", "서구",
			"수영구", "연제구", "영도구", "중구", "해운대구", "기장군"
			];
		break;
		
		case "대구시": chiledList
		= [	
			"남구", "달서구", "동구", "북구", "서구", "수성구", "중구", "달성군"
			];
		break;
		
		case "광주시": chiledList
		= [	
			"광산구", "남구", "동구", "북구", "서구"
			];
		break;
		
		case "대전시": chiledList
		= [	
			"대덕구", "동구", "서구", "유성구", "중구"
			];
		break;
		
		case "울산시": chiledList
		= [	
			"남구", "동구", "북구", "중구", "울주군"
			];
		break;
		
		case "세종시": chiledList
		= [	
			"조치원읍", "금남면", "부강면", "소정면", "연기면",
			"연동면", "연서면", "장군면", "전동면", "전의면", 
			"고운동", "다정동", "대평동", "도담동", "보람동",
			"소담동", "새롬동", "아름동", "종촌동", "한솔동"
			];
		break;
		
		case "강원도": chiledList
		= [	
			"강릉시", "동해시", "삼척시", "속초시", "원주시",
			"춘천시", "태백시", "고성군", "양구군", "양양군",
			"영월군", "인제군", "정선군", "철원군", "평창군",
			"홍천군", "화천군", "횡성군"
			];
		break;
		
		case "충청북도": chiledList
		= [	
			"제천시", "청주시", "충주시", "괴산군", "단양군",
			"보은군", "영동군", "옥천군", "음성군", "증평군", "진천군"
			];
		break;
		
		case "충청남도": chiledList
		= [	
			"계룡시", "공주시", "논산시", "당진시", "보령시",
			"서산시", "아산시", "천안시", "금산군", "부여군",
			"서천군", "예산군", "청양군", "태안군", "홍성군"
			];
		break;
		
		case "전라북도": chiledList
		= [	
			"군산시", "김제시", "남원시", "익산시", "전주시",
			"정읍시", "고창군", "무주군", "부안군", "순창군",
			"완주군", "임실군", "장수군", "진안군"
			];
		break;
		
		case "전라남도": chiledList
		= [	
			"광양시", "나주시", "목포시", "순천시", "여수시",
			"강진군", "고흥군", "곡성군", "구례군", "담양군",
			"무안군", "보성군", "신안군", "영광군", "영암군",
			"완도군", "장성군", "장흥군", "진도군", "함평군",
			"해남군", "화순군"
			];
		break;
		
		case "경상북도": chiledList
		= [	
			"경산시", "경주시", "구미시", "김천시", "문경시",
			"상주시", "안동시", "영주시", "영천시", "포항시",
			"고령군", "군위군", "봉화군", "성주군", "영덕군",
			"영양군", "예천군", "울릉군", "울진군", "의성군",
			"청도군", "청송군", "칠곡군"
			];
		break;
		
		case "경상남도": chiledList
		= [	
			"거제시", "김해시", "밀양시", "사천시", "양산시",
			"진주시", "창원시", "통영시", "거창군", "고성군",
			"남해군", "산청군", "의령군", "창녕군", "하동군",
			"함안군", "함양군", "합천군"
			];
		break;
	}
		

		
		$("#child").empty();
		
		for(var i = 0; i < chiledList.length; i++) {
			option = "<option>" + chiledList[i] + "</option>"
			$("#child").append(option);
		}
	}

</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="info_policy.woo">
		<main class="policy_main">
			<div class="policy_box ma">
				<div class="policy_content_title">
					<h2>'${name}' &nbsp;정책 정보</h2>
					<span>동/구별 정책정보가 상이 할수 있습니다.자세한 문의는 각 동/구 청으로 확인 바랍니다.</span>
				</div>
				<div class="policy_content_search">
					<select class="selectpicker le" data-size="5" id="parent" onchange="LocatlonBinding();">
						<option>서울시</option>
						<option>경기도</option>
						<option>인천시</option>
						<option>부산시</option>
						<option>대구시</option>
						<option>광주시</option>
						<option>대전시</option>
						<option>울산시</option>
						<option>세종시</option>
						<option>강원도</option>
						<option>충청북도</option>
						<option>충청남도</option>
						<option>전라북도</option>
						<option>전라남도</option>
						<option>경상북도</option>
						<option>경상남도</option>
					</select> <select class="selectpicker" data-size="5" id="child">
						
					</select>
					<button>검색</button>
				</div>
				<div class="policy_content_maintxt">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg" height="600mm" id="svg4658" version="1.1" viewBox="0 0 2125.9843 2125.9842" width="600mm"><defs id="defs4660"/><g id="layer1" transform="translate(0,1073.6222)"><path d="m 188.54149,-400.16795 1754.72731,0 c 77.192,0 139.3358,68.39363 139.3358,153.34892 L 1064.5685,493.9172 49.205624,-246.81903 c 0,-84.95529 62.143866,-153.34892 139.335866,-153.34892 z" id="rect4148" style="opacity:1;fill:#989691;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 1064.9568,-1061.0169 c -15.3059,-0.09 -26.9838,9.0736 -39.8207,17.4098 -275.92161,179.18099 -752.20895,541.15627 -917.24185,667.60305 -18.108277,13.87427 -27.825703,27.88269 -33.040943,38.56894 -15.922077,24.93054 -25.257345,55.35964 -25.257345,88.27951 l 2033.397738,0 c 0,-36.93723 -11.7524,-70.74195 -31.3766,-97.1575 -7.4464,-10.69879 -17.2818,-21.93544 -30.1038,-31.66418 -168.4527,-127.81576 -643.0577,-485.30208 -916.9651,-665.13982 -12.8079,-8.4093 -24.2698,-17.8094 -39.5914,-17.8998 z" id="path4153" style="opacity:1;fill:#ebeae3;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><rect height="1079.6366" id="rect4175" rx="0" ry="0" style="opacity:1;fill:#f6f6f6;fill-opacity:1;stroke:none;stroke-width:1.00000012;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" transform="matrix(0.99999694,-0.00247446,0.00185735,0.99999828,0,0)" width="1403.0609" x="357.0015" y="-484.32114"/><rect height="32.050957" id="rect4232" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-210.28609"/><rect height="32.050957" id="rect4248" rx="4.3800354" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="665.91992" x="439.84296" y="285.51721"/><rect height="32.050957" id="rect4246" rx="5.8836765" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="894.52655" x="439.84296" y="117.49538"/><rect height="32.050957" id="rect4244" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-50.527126"/><rect height="32.050957" id="rect4259" rx="2.5194571" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="383.04642" x="439.84296" y="-356.27264"/><path d="m 2082.2735,-247.92348 z m 0,0 0,1146.04381 c 0,78.61526 -62.1427,141.90707 -139.3347,141.90707 l -1754.72575,0 878.69945,-547.21469 z" id="path4173" style="opacity:1;fill:#eeede9;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 47.978709,-251.81896 z m 0,0 0,1146.04395 c 0,78.61512 62.142631,141.90691 139.334641,141.90691 l 1754.72565,0 -878.6996,-547.21466 z" id="rect4162" style="opacity:1;fill:#e9e7e0;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/></g></svg>
					<span> (건의사항) ο 한부모가족이 자립할 수 있도록 고졸자녀의 취업 준비기간 1년 연장 ⇒ 당초)
						대학 미취학자의 연령(18세 미만) → 개선) 자립 준비기간 1년 연장 ο 한부모가족 고졸자녀의 취업지원, 생활 안정
						및 복지 증진에 기여 (조치사항) ο 한부모가족 자녀 양육비 지원 대상인 "아동"이란 아동복지법에 만 18세 미만을
						말하며, 만 18세가 되는 생일이 도래하는 달의 전 달까지 ‘아동양육비(복지급여)' 지원 중임 ο 다만, 대학에
						진학하여 취학 중인 경우 22세 미만까지, 병역을 이행하고 취학 중인 경우는 병역기간을 가산한 연령 미만의 자까지
						확대하여 '저소득 한부모가족증명서'(비급여성 지원)를 발급하여 지원하고 있음 ※ 자녀 대학특별전형, 공직채용할당,
						전기·통신 등 각종감면 실질적 혜택부여 ο 대학에 진학하지 않은 18세 초과 자녀는 아동양육비는 물론 ‘저소득
						한부모가족증명서 발급'이 불가능해 지원의 사각지대에 놓일 수 있다는 점에 공감함. 이에, 고졸자가 취업을 준비하는 기간
						동안만이라도 지원 혜택(임대 주택선정권, 양곡비, 통신비 감면, 전기요금 감면 등)을 받을 수 있도록 ‘자립
						준비기간’을 부여하고 ‘저소득 한부모가족증명서 발급’등을 방법을 검토해야 한다는 의견에 공감함 ο 다만,
						「한부모가족지원법」 제4조(정의) 개정 필요 사안으로 ‘19년 하반기 개정안 발의와 한부모 당사자, 관계 부처 및
						이해관계자 의견 조회가 필요함</span>

				</div>
<!-- 				<div class="policy_content_download"> -->
<!-- 					<span> 파일 다운로드 </span> -->
<!-- 					<button>다운로드</button> -->
<!-- 				</div> -->
			</div>
		</main>
	</form>
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
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