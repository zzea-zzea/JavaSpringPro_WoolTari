<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(document).ready(function() {
		$("#localsel").val("서울시").prop("selected", true);
		
		$("#showbtn").click(function() {
			var type_si = ["서울","부산","대구","인천","광주","대전","울산","경기","강원","충북","충남","전북","전남","경북","경남","제주"];
			for(var z = 0 ; z < type_si.length ; z++){
				if(type_si[z]==$('#main-city option:selected').val()){
					$("#localsel").val(type_si[z]).prop("selected", true);
					$('.policy_content_maintxt_span').text(type_si[z]);
				}
			}
		});
	});
</script>
<body>

	<%@ include file="../common/_header.jsp"%>
	<main class="policy_main">
		<div class="policy_box ma">
			<div class="policy_content_title">
				<h2 id="policy_content_title_name">정책 정보</h2>
				<span>동/구별 정책정보가 상이 할수 있습니다.자세한 문의는 각 동/구 청으로 확인 바랍니다.</span>
			</div>
			<div class="policy_content_search">
				<select class="selectpicker le" data-size="5" id="main-city" name="local_si">
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
				 <a id="showbtn"><button>검색</button></a>
			</div>
			<div class="policy_content_maintxt">
				<!-- 					<svg xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg" height="600mm" id="svg4658" version="1.1" viewBox="0 0 2125.9843 2125.9842" width="600mm"><defs id="defs4660"/><g id="layer1" transform="translate(0,1073.6222)"><path d="m 188.54149,-400.16795 1754.72731,0 c 77.192,0 139.3358,68.39363 139.3358,153.34892 L 1064.5685,493.9172 49.205624,-246.81903 c 0,-84.95529 62.143866,-153.34892 139.335866,-153.34892 z" id="rect4148" style="opacity:1;fill:#989691;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 1064.9568,-1061.0169 c -15.3059,-0.09 -26.9838,9.0736 -39.8207,17.4098 -275.92161,179.18099 -752.20895,541.15627 -917.24185,667.60305 -18.108277,13.87427 -27.825703,27.88269 -33.040943,38.56894 -15.922077,24.93054 -25.257345,55.35964 -25.257345,88.27951 l 2033.397738,0 c 0,-36.93723 -11.7524,-70.74195 -31.3766,-97.1575 -7.4464,-10.69879 -17.2818,-21.93544 -30.1038,-31.66418 -168.4527,-127.81576 -643.0577,-485.30208 -916.9651,-665.13982 -12.8079,-8.4093 -24.2698,-17.8094 -39.5914,-17.8998 z" id="path4153" style="opacity:1;fill:#ebeae3;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><rect height="1079.6366" id="rect4175" rx="0" ry="0" style="opacity:1;fill:#f6f6f6;fill-opacity:1;stroke:none;stroke-width:1.00000012;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" transform="matrix(0.99999694,-0.00247446,0.00185735,0.99999828,0,0)" width="1403.0609" x="357.0015" y="-484.32114"/><rect height="32.050957" id="rect4232" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-210.28609"/><rect height="32.050957" id="rect4248" rx="4.3800354" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="665.91992" x="439.84296" y="285.51721"/><rect height="32.050957" id="rect4246" rx="5.8836765" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="894.52655" x="439.84296" y="117.49538"/><rect height="32.050957" id="rect4244" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-50.527126"/><rect height="32.050957" id="rect4259" rx="2.5194571" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="383.04642" x="439.84296" y="-356.27264"/><path d="m 2082.2735,-247.92348 z m 0,0 0,1146.04381 c 0,78.61526 -62.1427,141.90707 -139.3347,141.90707 l -1754.72575,0 878.69945,-547.21469 z" id="path4173" style="opacity:1;fill:#eeede9;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 47.978709,-251.81896 z m 0,0 0,1146.04395 c 0,78.61512 62.142631,141.90691 139.334641,141.90691 l 1754.72565,0 -878.6996,-547.21466 z" id="rect4162" style="opacity:1;fill:#e9e7e0;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/></g></svg> -->
				<span class="policy_content_maintxt_span">저희 울타리 사이트에 자랑 도시별로
					정보 정책을 볼 수 있습니다 </span>
			</div>
		</div>
	</main>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>