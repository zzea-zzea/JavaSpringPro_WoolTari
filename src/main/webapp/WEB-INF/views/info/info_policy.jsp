<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(document).ready(function() {
	$(".hide").hide();
	$('.h2_title_si').text("서울특별시 정책 정보");
	$("#showbtn").click(function() {
	var type_si = [ "서울", "부산", "대구", "인천", "광주", "대전","울산", "경기", "강원", "충북", "충남", "전북", "전남","경북", "경남", "제주" ];
		for (var z = 0; z < type_si.length; z++) {
			if (type_si[0] == $('#main-city option:selected').val()) {
				$('.h2_title_si').text(type_si[0]+"정책 정보");
				$('.su_txt').show();
				$(".hide").hide();
			}else if(type_si[7] == $('#main-city option:selected').val()){
				$('.h2_title_si').text(type_si[7]+"정책 정보");
				$('.su_txt').hide();
				$('.gg_txt').show();
				$('.gw_txt').hide();
			}else if(type_si[8] == $('#main-city option:selected').val()){
				$('.h2_title_si').text(type_si[8]+"정책 정보");
				$('.su_txt').hide();
				$('.gw_txt').show();
				$('.gg_txt').hide();
			}else {
				if(type_si[z] == $('#main-city option:selected').val()){
					$('.h2_title_si').text(type_si[z]+"정책 정보");
					$('.su_txt').hide();
					$(".hide").hide();
					$('.policy_content_maintxt_span').show();
					$('.policy_content_maintxt_span').text(type_si[z]+" 은/는 아직 준비중 입니다.");
				}
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
				<h2 class="h2_title_si"></h2>
				<span>동/구별 정책정보가 상이 할수 있습니다.자세한 문의는 각 동/구 청으로 확인 바랍니다.</span>
			</div>
			<div class="policy_content_search">
				<select class="selectpicker le" data-size="5" id="main-city" name="local_si">
					<option value="서울" selected>서울특별시</option>
					<option value="경기">경기도</option>
					<option value="강원">강원도</option>
					<option value="부산">부산 광역시</option>
					<option value="대구">대구 광역시</option>
					<option value="인천">인천 광역시</option>
					<option value="광주">광주 광역시</option>
					<option value="대전">대전 광역시</option>
					<option value="울산">울산 광역시</option>
					<option value="충북">충청북도</option>
					<option value="충남">충청남도</option>
					<option value="전북">전라북도</option>
					<option value="전남">전라남도</option>
					<option value="경북">경상북도</option>
					<option value="경남">경상남도</option>
					<option value="제주">제주도</option>
				</select> <a id="showbtn"><button>검색</button></a>
			</div>
			<div class="policy_content_maintxt">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg" height="600mm" id="svg4658" version="1.1" viewBox="0 0 2125.9843 2125.9842" width="600mm"><defs id="defs4660"/><g id="layer1" transform="translate(0,1073.6222)"><path d="m 188.54149,-400.16795 1754.72731,0 c 77.192,0 139.3358,68.39363 139.3358,153.34892 L 1064.5685,493.9172 49.205624,-246.81903 c 0,-84.95529 62.143866,-153.34892 139.335866,-153.34892 z" id="rect4148" style="opacity:1;fill:#989691;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 1064.9568,-1061.0169 c -15.3059,-0.09 -26.9838,9.0736 -39.8207,17.4098 -275.92161,179.18099 -752.20895,541.15627 -917.24185,667.60305 -18.108277,13.87427 -27.825703,27.88269 -33.040943,38.56894 -15.922077,24.93054 -25.257345,55.35964 -25.257345,88.27951 l 2033.397738,0 c 0,-36.93723 -11.7524,-70.74195 -31.3766,-97.1575 -7.4464,-10.69879 -17.2818,-21.93544 -30.1038,-31.66418 -168.4527,-127.81576 -643.0577,-485.30208 -916.9651,-665.13982 -12.8079,-8.4093 -24.2698,-17.8094 -39.5914,-17.8998 z" id="path4153" style="opacity:1;fill:#ebeae3;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><rect height="1079.6366" id="rect4175" rx="0" ry="0" style="opacity:1;fill:#f6f6f6;fill-opacity:1;stroke:none;stroke-width:1.00000012;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" transform="matrix(0.99999694,-0.00247446,0.00185735,0.99999828,0,0)" width="1403.0609" x="357.0015" y="-484.32114"/><rect height="32.050957" id="rect4232" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-210.28609"/><rect height="32.050957" id="rect4248" rx="4.3800354" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="665.91992" x="439.84296" y="285.51721"/><rect height="32.050957" id="rect4246" rx="5.8836765" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="894.52655" x="439.84296" y="117.49538"/><rect height="32.050957" id="rect4244" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-50.527126"/><rect height="32.050957" id="rect4259" rx="2.5194571" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="383.04642" x="439.84296" y="-356.27264"/><path d="m 2082.2735,-247.92348 z m 0,0 0,1146.04381 c 0,78.61526 -62.1427,141.90707 -139.3347,141.90707 l -1754.72575,0 878.69945,-547.21469 z" id="path4173" style="opacity:1;fill:#eeede9;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 47.978709,-251.81896 z m 0,0 0,1146.04395 c 0,78.61512 62.142631,141.90691 139.334641,141.90691 l 1754.72565,0 -878.6996,-547.21466 z" id="rect4162" style="opacity:1;fill:#e9e7e0;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/></g></svg>
				<p class="su_txt">
					 <b>#성인 한부모가족(조손가족 포함)<br></b>
					<br>
					지원내용(금액) : 아동양육비 저소득 한부모가족의 만 18 세 미만 아동 자녀 1 인당 월 20 만원<br>
					「국민기초생활보장법」에 따른 생계급여를 지원받는 한부모가족의 만 18세 미만 자녀<br> 
					* ’21.5월부터 적용 자녀 1 인당 월 10 만원 추가 아동양육비 저소득 조손가족 및 만25 세 이상 미혼 한부모가족의 만 5 세 이하 아동<br> 
					* 만 24 세 이하 미혼한부모의 경우 청소년한부모로써 월 35 만원의 아동양육비를 지원하므로 제외 <br>
					* ’21.5월부터 만 35세 이상인 경우 지급 자녀 1 인당 월 5 만원 추가 아동양육비 만 25세 이상 34세 이하 청년 한부모가족의 만 5세 이하 아동<br>
					* ’21.5월부터 적용 자녀 1 인당 월 10 만원 추가 아동양육비 만 25세 이상 34세 이하 청년 한부모가족의 만 6세 이상 18세 미만 아동 <br>
					* ’21.5월부터 적용 자녀 1 인당 월 5 만원 아동교육지원비 저소득 한부모가족의 중학생 및 고등학생 자녀 자녀 1 인당 연 8.3만원 생계비 (생활보조금) 한부모가족복지시설에 입소한 저소득 한부모가구 가구당 월 5 만원<br> 
					* 모든 급여는 소득인정액이 기준 중위소득 52% 이하인 가족을 지원대상으로 함 <br>
					* 연령 기준이 연나이(’18년도)에서 만나이(’19년~)로 변경됨을 유의<br> 
					<br><br>
					<b>#청소년 한부모가정 지원 구분 지급시기 지원액 지원대상<br></b>
					<br>
					지원내용(금액) : 청소년 한부모 아동양육비 월별 지급 월 35 만원<br>
					* 기준 중위소득 60 % 이하 계좌입금 청소년 한부모 검정고시학습비 수시지급 (신청 시) 연 154 만원 이내 기준 중위소득 60 % 이하 해당 청소년 한부모가 등록한 학원 또는 개인계좌로 입금 청소년 한부모 고교생교육비 분기별 지급 실비<br>
					* 기 준 중위소득 52 % 해당 청소년 한부모가 재학 초과~60 % 중인 학교로 계좌입금 (교육급여 수급자 제외) 청소년 한부모 자립촉진수당 월별 지급 월 10 만원 기준 중위소득 60%이하 계좌입금 <br>
					* '21.5월부터 생계급여 지원 한부모가족 대상 월 25만원 아동양육비 지원 가능 <br>
					* 특수목적고 및 자율형사립고 등은 연간 최대 5백만원 한도내에서 지원가능 <br>
				</p> 
				<p class="gg_txt hide"> 
					<b>#저소득 한부모가정 건강검진 지원 기간 <br></b>
					<br>
					매년 1회 장소 : 관내 병원<br> 
					지원대상 : 저소득 한부모가족 세대주 160명<br> 
					지원금액 : 건강검진비용 1인당 110천원<br>
					지원 지원내용 : 초음파검사, 혈액종합검사 등 검진비 지원<br> 
					<br><br>
					<b># 미혼모⦁부 초기지원</b><br> 
					<br>
					기간 : 2020년 1월 ~ 계속<br> 
					장소: 모자가족복지시설 <br>
					지원대상 : 부천시에 거주하는 미혼모⦁부(세대)<br> 
					지원내용 상담을 통한 미혼모⦁부자의 정서 지원 출산 및 양육지원 사업 산비 및 아이의 입원, 예방접종비 등 병원비 분유, 유모차, 보행기, 장난감 등 양육용품 지원비<br>
					지원금액 : 연간 가구당 70만원 이하 (자녀가 12개월 이하인 경우 연간 30만원 한도 추가 지원) 친자검사비<br>
					지원(실비) 교육문화체험프로그램 및 자조모임 운영 지원 지역사회 유관기관의 연계지원 미혼모 출산 후 은가림빌 유휴공간을 활용하여 우선입소 연계<br> 
					<br><br>
					<b>#한부모가족 복지시설 퇴소자 자립지원 한부모가족 복지지설 퇴소자 자립지원금</b><br> 
					<br>
					기 간 : 연중 대 상<br>
					미혼모 시설 입소기간 1년 6월이상된 자로 자립의지가 있으며, 시설 퇴소 후 성남시에 거주예정인 세대로서 입소기간중 직업교육 후 자격증 취득(수료)하거나 또는 취업하여 3월이상 안정된 생활을 한 세대<br> 
					지원범위 : 퇴소후 전․월세 보증금, 창업을 위한 임대보증금<br> 
					지원금액 : 1세대당 5백만원 <br>
				</p> 
				<p class="gw_txt hide">
					 <b># 지원 내용 한부모가족증명서 발급</b><br>
					 <br>
					기준 중위소득 52% 이하인 가족의 만 18세 미만 자녀 월 20만원<br> 
					「국민기초생활보장법」에 따른 생계급여를 지원받는 한부모가족의 만 18세 미만 자녀 월 10만원<br> 
					* ’21.5월부터 적용 자녀 1인당 추가 아동양육비 •소득인정액이 기준 중위소득 52% 이하인 조손 및 만 35세 이상 미혼 한부모가족의 만 5세 이하 아동 자녀 1인당 월 5만원<br>
					* ’21.5월부터 적용 월 10만원 •소득인정액이 기준 중위소득 52% 이하인 만 25세 이상 34세 이하 청년<br>
					* 한부모가족의 만 6세 이상 18세 미만 아동 자녀 1인당 * ’21.5월부터 적용 월 5만원 아동교육 지원비 (학용품비)<br>
					* 소득인정액이 기준 중위소득 52% 이하인 가족의 중학생‧고등학생 자녀 자녀 1인당 연 8.3만원 생계비 (생활보조금)<br>
					* 한부모가족복지시설에 입소한 가족 중 소득인정액이 기준 중위소득 52% 이하인 가족 가구당 월 5만원 <br>
				</p>
				<span class="policy_content_maintxt_span hide"> </span>
			</div>
			<span>※ 미혼모 지원에 대한 내용은 여성가족부(http://www.mogef.go.kr) 한부모가족/미혼한부모지원을 참고하였습니다. </span>
		</div>
	</main>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>