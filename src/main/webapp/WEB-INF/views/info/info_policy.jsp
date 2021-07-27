<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="info_policy.woo">
		<main class="policy_main">
			<div class="policy_box ma">
				<div class="policy_content_box">
					<div class="policy_content_title">
						<h2>지원내용</h2>
						<span>지역별 지원정보가 상이하니 꼭 필수로 해당 지역 구청에 연락 하시길 바랍니다</span>
					</div>
					<div class="policy_content_search">
						<select class="selectpicker le" data-size="5">
							<option>서울특별시</option>
							<option>경기도</option>
							<option>충청북도</option>
							<option>충청남도</option>
							<option>경상북도</option>
							<option>경상남도</option>
							<option>전라북도</option>
							<option>전라남도</option>
							<option>제주도</option>
							<option>울릉도</option>
						</select> <select class="selectpicker" data-size="5">
							<option>Mustard</option>
							<option>Relish</option>
						</select>
						<button class="btn_coldef">검색</button>
					</div>
					<div class="policy_content_maintxt">
						<span> (건의사항) ο 한부모가족이 자립할 수 있도록 고졸자녀의 취업 준비기간 1년 연장 ⇒ 당초)
							대학 미취학자의 연령(18세 미만) → 개선) 자립 준비기간 1년 연장 ο 한부모가족 고졸자녀의 취업지원, 생활 안정
							및 복지 증진에 기여 (조치사항) ο 한부모가족 자녀 양육비 지원 대상인 "아동"이란 아동복지법에 만 18세 미만을
							말하며, 만 18세가 되는 생일이 도래하는 달의 전 달까지 ‘아동양육비(복지급여)' 지원 중임 ο 다만, 대학에
							진학하여 취학 중인 경우 22세 미만까지, 병역을 이행하고 취학 중인 경우는 병역기간을 가산한 연령 미만의 자까지
							확대하여 '저소득 한부모가족증명서'(비급여성 지원)를 발급하여 지원하고 있음 ※ 자녀 대학특별전형, 공직채용할당,
							전기·통신 등 각종감면 실질적 혜택부여 ο 대학에 진학하지 않은 18세 초과 자녀는 아동양육비는 물론 ‘저소득
							한부모가족증명서 발급'이 불가능해 지원의 사각지대에 놓일 수 있다는 점에 공감함. 이에, 고졸자가 취업을 준비하는
							기간 동안만이라도 지원 혜택(임대 주택선정권, 양곡비, 통신비 감면, 전기요금 감면 등)을 받을 수 있도록 ‘자립
							준비기간’을 부여하고 ‘저소득 한부모가족증명서 발급’등을 방법을 검토해야 한다는 의견에 공감함 ο 다만,
							「한부모가족지원법」 제4조(정의) 개정 필요 사안으로 ‘19년 하반기 개정안 발의와 한부모 당사자, 관계 부처 및
							이해관계자 의견 조회가 필요함</span>

					</div>
					<div class="policy_content_download">
						<span> 파일 다운로드 </span>
						<button class="btn_coldef">다운로드</button>
					</div>
				</div>
			</div>
		</main>
	</form>
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
	<%@ include file="../common/_script.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.selectpicker').selectpicker();
		});
	</script>
</body>
</html>