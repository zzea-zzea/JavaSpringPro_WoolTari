<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support_info.woo">
		<main class="support_main">
			<div class="support_box ma">
				<div class="support_content_title">
					<h2>후원안내</h2>
					<span>나눔이란 특정한 사람에 의해 실시되는 특별한 활동이 아니라 누구나 언제 어디서라도 참여할 수 있는
						활동이며,<br> 가진 자가 일반적으로 베푸는 '주는 자와 받는자'의 관계에서 벗어나 한 인간으로서 다른
						사람과 더불어 행하는 만 남과 나눔의 활동입니다.
					</span>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti">
						<h3>후원혜택</h3>
					</div>
					<div class="support_content_benefits_txt">
						<span> - 후원금은 법인 세법 제 24조, 소득세법 제 34조항에 의해 연말정산시 소득 공제세액을
							받으실수 있습니다.</span><br> <span class="le">세법이 정한 요건을 충족하는 공익성이
							강한 단체에 대한 기부금으로 지정기부금보다 공제한도가 높습니다.</span><br> <span class="fon">
							* 소득세법(개인)은 소득금액의 100% 한도로 세액공제(사업자는 필요경비)</span><br> <span
							class="fon"> * 법인세법(법인)은 소득금액(이익)의 50% 한도로 손금산입 </span>
					</div>
				</div>
				<div class="support_content_benefits ">
					<div class="support_content_benefits_ti">
						<h3>후원처 선택</h3>
					</div>
					<div class="support_content_benefits_txt bo">
						<span> - 후원처를 선택함으로써 후원 기관들을 선택하여 후원을 진행하실수 있습니다</span><br>
					</div>
					<div class="support_content_benefits_img">
						<div class="support_content_benefits_img_me">
							<div class="support_content_benefits_img_box sin">
								<img src="${path}/resources/img/main/main1.png" alt="img">
								<h4>미혼모 시설 지원</h4>
								<p>
									경제적으로 취약한 미혼모,부가 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,
									치료비를 위해 기부금을 전달합니다.
								</p>
							</div>
							<div class="support_content_benefits_img_box fam">
								<img src="${path}/resources/img/main/main3.png" alt="img">
								<h4>한부모 가정</h4>
								<p>
									돌봄이 필요한 아동의 삶과 가정, 지역 사회의 <br>건강한 변화를 통해 행복한 대한민국이 되기 위해 <br>기부금을
									전달 합니다.
								</p>
							</div>
							<div class="support_content_benefits_img_box ri">
								<img src="${path}/resources/img/main/main4.png" alt="img">
								<h4>법인 재단</h4>
								<p>
									권리를 보호하며 양육비를 확보, 자녀 양육<br> 부담경감 및 생활안정 지원을 위한 법률구조를<br>
									진행하여 기부금은을 전달 합니다.
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti">
						<h3>후원방법</h3>
					</div>
					<div class="support_content_benefits_txt">
						<span>상단 메뉴 중 '후원 하기'에 접속 하신뒤 후원처 선택후 각 납입 방법에 따라 진행 하시면 됩니다.</span><br> 
						<span>이를 통해 기부되는 기부금의 영수증은 이미지로 발급이 가능하며,</span><br> 
						<span>후원 내역은 마이페이지 에서 확인이 가능 합니다</span>
					</div>
					<div class="support_content_benefits_button">
					<button>후원 하러 가기</button>
					</div>
				</div>
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