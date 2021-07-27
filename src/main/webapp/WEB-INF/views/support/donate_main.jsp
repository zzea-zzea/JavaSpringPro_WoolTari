<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <link href="../css/support.css" rel="stylesheet"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	function handleOnChange(e) {
		// 선택된 데이터 가져오기
		const value = e.value;

		// 데이터 출력
		document.getElementById('information_0').innerText = value;
	}
</script>

<%@ include file="../common/_link.jsp"%>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="donate_main.woo">
		<div class="one_box">
			<div class="support_view_first_box">
				<div class="support_view_title">
					<h3>
						<span>후</span>원하기
					</h3>
				</div>
				<hr class="donate_line">
				<div class="main_image_box">
					<div class="support_image">
						<input type="image" src="${path}/resources/img/donate/donate1.png">
						<p>
							후원하시면 한부모 가정에게<br>행복을 전달할 수 있습니다.
						</p>
					</div>
				</div>
				<div class="sponsorship_description_box">
					<div class="sponsorship_description_box_image">
						<input type="image" src="${path}/resources/img/donate/donate2.png">
						<div class="sponsorship_description_box_write">
							<ul>
								<li class="sponsorship_description_box_title"><strong>모든
										어린이는 보호받을 권리가 있습니다.</strong></li>
								<hr>
								<li>저소득가정 아이들이 건강하고 행복하게 자랄 수 있도록 생존, 보호, 발달, 참여 전반에 걸쳐
									경제적, 정서적 지원을 합니다.</li>
								<li>아동의 권리를 침해하는 사회적 문제에 대응하여, 아동의 권리가 보호·존중·실현 되도록 인식 및
									환경을 개선하고, 정책의 변화를 촉구하기 위해 목소리를 냅니다.</li>
								<li>한부모 가정과 아이들에게 위험에서 보호하고 건강하게자 자랄 수 있도록 돕습니다.</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="sponsorship_description_box_sub">
					<div class="sponsorship_description_box_sub_title">
						<h4>여러분의 후원금으로 행복한 세상을 만듭니다.</h4>
					</div>
					<hr>
					<div class="sponsorship_description_box_sub_image_box">
						<div class="sponsorship_description_box_sub_image_one">
							<input type="image" src="${path}/resources/img/donate/donate3.png">
							<ul>
								<li class="sponsorship_description_box_sub_image_one_title">
									<strong>차별 없는 구호</strong> <!-- 							</li> --> <!-- 							<li>성별에 관계없이 어린이를 위한 구호<br>사업과 어린이 권리사업을 펼치고 있습니다. -->
									<!-- 							</li> -->
							</ul>
						</div>
						<div class="sponsorship_description_box_sub_image_two">
							<input type="image" src="${path}/resources/img/donate/donate4.png">
							<ul>
								<li class="sponsorship_description_box_sub_image_two_title">
									<strong>엄격한 후원금 관리</strong>
								</li>
								<!-- 							<li>엄격한 심사와 외부회계법인의<br>회계감사로 후원금을 투명하고<br>정확하게 -->
								<!-- 								관리합니다. -->
								<!-- 							</li> -->
							</ul>
						</div>
						<div class="sponsorship_description_box_sub_image_thr">
							<input type="image" src="${path}/resources/img/donate/donate5.jpg">
							<ul>
								<li class="sponsorship_description_box_sub_image_thr_title">
									<strong>국내복지사업</strong>
								</li>
								<!-- 							<li>편견과 차별속에서 경제적, 의료적<br>문제로 고통받고 있는 소외된 <br>가정 -->
								<!-- 								에게 든든한 버팀목이<br> 되어줄 수 있는<br> 복지 서비스 지원합니다. -->
								<!-- 							</li> -->
							</ul>
						</div>
					</div>
				</div>

				<div>
					<div class="support_next_page">
						<input type="submit" value="기부하기"> <a
							href="${pageContext.request.contextPath}/content.woo"><input
							type="button" value="돌아가기" onclick="confirm('돌아가시겠습니까?')"></a>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>