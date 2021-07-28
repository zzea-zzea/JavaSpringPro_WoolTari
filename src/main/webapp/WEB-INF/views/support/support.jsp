<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support.woo">
		<main class="support_main">
			<div class="support_box ma">
				<div class="support_content_title">
					<h2>후원하기</h2>
					<span>나눔이란 특정한 사람에 의해 실시되는 특별한 활동이 아니라 누구나 언제 어디서라도 참여할 수 있는
						활동입니다!<br>
					</span>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti">
						<h3>후원처 선택</h3>
					</div>
					<div class="support_content_benefits_txt">
						<div class="support_content_benefits_selectBox">
							<img src="${path}/resources/img/main/main1.png" alt="img">
							<div class="center_content_search">
								<select class="selectpicker le" data-size="5">
									<option>한부모 가정</option>
									<option>미혼모시설</option>
									<option>법인 재단</option>
								</select>
							</div>
						</div>
						<div class="support_content_benefits_selectBox_txt">
							<h4>미혼모 시설 지원</h4>
							<p>
								경제적으로 취약한 미혼모,부가 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,
								치료비를 위해 기부금을 전달합니다.
							</p>
						</div>
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