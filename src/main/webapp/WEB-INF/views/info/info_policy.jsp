<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
window.onload = function(){
	let mainCity = document.querySelector(".main-city");
	
	mainCity.onchange = function(){
		var subCity = document.querySelector('.sub-city');
		var mainOption = mainCity.options[mainCity.selectedIndex].innerText;
		
		var subOptions={
				su_gu:["종로구", "중구", "용산구", "성동구", "광진구", "동대문구", "중랑구", "성북구", "강북구", "도봉구", "노원구", "은평구", "서대문구", "마포구", "양천구", "강서구", "구로구", "금천구", "영등포구", "동작구", "관악구", "서초구", "강남구", "송파구", "강동구" ],
				gg_gu:["고양시", "과천시", "광명시", "광주시", "구리시", "군포시", "김포시","남양주시", "동두천시", "부천시", "성남시", "수원시", "시흥시", "안산시", "안성시","안양시", "양주시", "여주시", "오산시", "용인시", "의왕시", "의정부시", "이천시","파주시", "평택시", "포천시", "하남시", "화성시"],
				ic_gu:[ "계양구", "남동구", "동구", "미추홀구", "부평구", "서구", "수구", "중구" ],
				bs_gu:[ "강서구", "금정구", "남구", "동구", "동래구", "부산진구", "북구","사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구"],
				dg_gu:[  "남구", "달서구", "동구", "북구", "서구", "수성구", "중구"],
				gj_gu:[  "광산구", "남구", "동구", "북구", "서구"],
				dj_gu:[ "대덕구", "동구", "서구", "유성구", "중구" ],
				ws_gu:[  "남구", "동구", "북구", "중구" ],
				kwd_gu:["강릉시", "동해시", "삼척시", "속초시", "원주시", "춘천시", "태백시" ],
				ccd_gu:[ "제천시", "청주시", "충주시", "괴산군", "단양군", "보은군", "영동군", "옥천군", "음성군", "증평군", "진천군","계룡시", "공주시", "논산시", "당진시", "보령시", "서산시", "아산시", "천안시" ],
				jrd_gu:["군산시", "김제시", "남원시", "익산시", "전주시", "정읍시","광양시", "나주시", "목포시", "순천시", "여수시"],
				ksd_gu:["경산시", "경주시", "구미시", "김천시", "문경시", "상주시", "안동시", "영주시", "영천시", "포항시", "거제시", "김해시", "밀양시", "사천시", "양산시", "진주시", "창원시", "통영시"],
				jjd_gu:[ "제주시", "서귀포시"]
		}
		switch(mainOption){
			case "서울시": var subOption = subOptions.su_gu; break;
			case "경기도": var subOption = subOptions.gg_gu; break;
			case "인천시": var subOption = subOptions.ic_gu; break;
			case "부산시": var subOption = subOptions.bs_gu; break;
			case "대구시": var subOption = subOptions.dg_gu; break;
			case "대전시": var subOption = subOptions.dj_gu; break;
			case "광주시": var subOption = subOptions.gj_gu; break;
			case "울산시": var subOption = subOptions.ws_gu; break;
			case "강원도": var subOption = subOptions.kwd_gu; break;
			case "충청도": var subOption = subOptions.ccd_gu; break;
			case "전라도": var subOption = subOptions.jrd_gu; break;
			case "경상도": var subOption = subOptions.ksd_gu; break;
			case "제주도": var subOption = subOptions.jjd_gu; break;
		}
		subCity.options.length= 0;
		for(var i = 0; i <subOption.length; i++){
			var option = document.createElement('option');
			option.innerText=subOption[i];
			subCity.append(option);
		}
	};
	
}
	
// 	$("#showbtn").click(function() {
// 		if($('#parent option:selected').val() == '서울시'){
// 			if($('#child option:selected').val() == '송파구') {
// 				$('.policy_content_maintxt_span').text("서울시 송파구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
// 			} else if ($('#child option:selected').val() == '종로구') {
// 				$('.policy_content_maintxt_span').text("서울시 종로구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
// 			} else if ($('#child option:selected').val() == '중구') {
// 				$('.policy_content_maintxt_span').text("서울시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
// 			} else if ($('#child option:selected').val() == '용산구') {
// 				$('.policy_content_maintxt_span').text("서울시 용산구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
// 			} 
// 		}
	
		
</script>
<body>

	<%@ include file="../common/_header.jsp"%>
		<main class="policy_main">
			<div class="policy_box ma">
				<div class="policy_content_title">
					<h2 id="policy_content_title_name"></h2>
					<span>동/구별 정책정보가 상이 할수 있습니다.자세한 문의는 각 동/구 청으로 확인 바랍니다.</span>
				</div>
				<div class="policy_content_search">
					<select class="main-city le" data-size="5" >
						<option>시를 선택 하세요</option>
						<option value="서울">서울시</option>
						<option value="경기">경기도</option>
						<option value="인천">인천시</option>
						<option value="부산">부산시</option>
						<option value="대구">대구시</option>
						<option value="광주">광주시</option>
						<option value="대전">대전시</option>
						<option value="울산">울산시</option>
						<option value="강원">강원도</option>
						<option value="충청">충청도</option>
						<option value="전라">전라도</option>
						<option value="경상">경상도</option>
						<option value="제주">제주도</option>
					</select>
					<select class="sub-city" data-size="5">
						<option>구를 선택 하세요</option>
					</select>
					<a id="showbtn"><button>검색</button></a>
				</div>
				<div class="policy_content_maintxt">
<!-- 					<svg xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg" height="600mm" id="svg4658" version="1.1" viewBox="0 0 2125.9843 2125.9842" width="600mm"><defs id="defs4660"/><g id="layer1" transform="translate(0,1073.6222)"><path d="m 188.54149,-400.16795 1754.72731,0 c 77.192,0 139.3358,68.39363 139.3358,153.34892 L 1064.5685,493.9172 49.205624,-246.81903 c 0,-84.95529 62.143866,-153.34892 139.335866,-153.34892 z" id="rect4148" style="opacity:1;fill:#989691;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 1064.9568,-1061.0169 c -15.3059,-0.09 -26.9838,9.0736 -39.8207,17.4098 -275.92161,179.18099 -752.20895,541.15627 -917.24185,667.60305 -18.108277,13.87427 -27.825703,27.88269 -33.040943,38.56894 -15.922077,24.93054 -25.257345,55.35964 -25.257345,88.27951 l 2033.397738,0 c 0,-36.93723 -11.7524,-70.74195 -31.3766,-97.1575 -7.4464,-10.69879 -17.2818,-21.93544 -30.1038,-31.66418 -168.4527,-127.81576 -643.0577,-485.30208 -916.9651,-665.13982 -12.8079,-8.4093 -24.2698,-17.8094 -39.5914,-17.8998 z" id="path4153" style="opacity:1;fill:#ebeae3;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><rect height="1079.6366" id="rect4175" rx="0" ry="0" style="opacity:1;fill:#f6f6f6;fill-opacity:1;stroke:none;stroke-width:1.00000012;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" transform="matrix(0.99999694,-0.00247446,0.00185735,0.99999828,0,0)" width="1403.0609" x="357.0015" y="-484.32114"/><rect height="32.050957" id="rect4232" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-210.28609"/><rect height="32.050957" id="rect4248" rx="4.3800354" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="665.91992" x="439.84296" y="285.51721"/><rect height="32.050957" id="rect4246" rx="5.8836765" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="894.52655" x="439.84296" y="117.49538"/><rect height="32.050957" id="rect4244" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-50.527126"/><rect height="32.050957" id="rect4259" rx="2.5194571" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="383.04642" x="439.84296" y="-356.27264"/><path d="m 2082.2735,-247.92348 z m 0,0 0,1146.04381 c 0,78.61526 -62.1427,141.90707 -139.3347,141.90707 l -1754.72575,0 878.69945,-547.21469 z" id="path4173" style="opacity:1;fill:#eeede9;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 47.978709,-251.81896 z m 0,0 0,1146.04395 c 0,78.61512 62.142631,141.90691 139.334641,141.90691 l 1754.72565,0 -878.6996,-547.21466 z" id="rect4162" style="opacity:1;fill:#e9e7e0;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/></g></svg> -->
					<span class="policy_content_maintxt_span">저희 울타리 사이트에 자랑 도시별로 정보 정책을 볼 수 있습니다 </span>
				</div>
			</div>
		</main>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>