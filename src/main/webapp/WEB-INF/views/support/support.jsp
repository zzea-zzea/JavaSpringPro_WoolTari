<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	   $("#selectpicker_le").change(function() {
	      if($('#selectpicker_le option:selected').val() == '미혼모 시설') {
	         $('.support_title_option').text("미혼모 시설");
	         $('.support_content_option').html(
	               "경제적으로 취약한 미혼모,부가 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,치료비를 위해 기부금을 전달합니다.");
	      } else if($('#selectpicker_le option:selected').val() == '한부모 가정') {
	         $('.support_title_option').text("한부모 가정");
	         $('.support_content_option').html(
	               "경제적으로 취약한 한부모가정이 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,치료비를 위해 기부금을 전달합니다.");
	      } else if($('#selectpicker_le option:selected').val() == '법인 재단') {
	         $('.support_title_option').text("법인 재단");
	         $('.support_content_option').html(
	               "경제적으로 취약한 가정을  <br>위해 저희가 심사해서 찾은 재단에 기부금을 전달합니다");
	      }
	   });
	   $(document).ready(function() {
	      $(".form-check-input").change(function() {
	      var fruitValue = $('form-check-input :checked').val();
	      if($('form-check-input :checked').val() == "option1") {
	         $('bankbook_no_name_span').empty();
	      }
	      
	      })
	      
	   });
	});
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support.woo">
		<main class="support_main">
			<div class="support_box s ma">
				<div class="support_content_title">
					<h2>후원하기ddd</h2>
					<span>선택한 사업에 후원하는 방법으로, 지원이 시급한 이웃에게 전달되어 도움을 줄 수 있습니다. </span>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti le">
						<h3>후원처 선택</h3>
					</div>
					<div class="support_content_benefits_txt sm">
						<div class="support_content_benefits_con img">
							<img src="${path}/resources/img/main/main1.png" alt="img">
						</div>
						<div class="support_content_benefits_con">
							<div class="support_content_benefits_select_con">
								<select class="selectpicker le" data-size="5" id="selectpicker_le">
									<option value="한부모 가정">한부모 가정</option>
									<option value="미혼모 시설">미혼모 시설</option>
									<option value="법인 재단">법인 재단</option>
								</select>
							</div>
							<div class="support_content_benefits_select_con txt">
								<h4 class="support_title_option">한부모 가정 시설</h4>
								<p class="support_content_option">
									경제적으로 취약한 미혼모,부가 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,
									치료비를 위해 기부금을 전달합니다.
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti ba">
						<h3>후원금 선택</h3>
					</div>
					<div class="payment_content_benefits">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked="checked">
							<label class="form-check-label" for="inlineRadio1">20,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
							<label class="form-check-label" for="inlineRadio2">50,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
							<label class="form-check-label" for="inlineRadio3">100,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="option5">
							<label class="form-check-label" for="inlineRadio5">200,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="option5">
							<label class="form-check-label" for="inlineRadio5">300,000원</label>
						</div>
					</div>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti ba">
						<h3>후원자 정보 입력</h3>
					</div>
					<table class="table ">
						<tbody>
							<tr>
								<td>후원인구분</td>
								<td>법인</td>
							</tr>
							<tr>
								<td>주민등록번호</td>
								<td><input type="text" maxlength="6">&nbsp;-&nbsp;<input
									type="password" maxlength="7"></td>
							</tr>
							<tr>
								<td>성명</td>
								<td>이주현</td>
							</tr>
							<tr class="success">
								<td>생년월일</td>
								<td>1997 - 08 - 02</td>
							</tr>
							<tr class="danger">
								<td>휴대폰 번호</td>
								<td>010-2110-6711</td>
							</tr>
							<tr class="danger">
								<td>이메일주소</td>
								<td>yoojoo300@github.com</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti ba">
						<h3>결제수단</h3>
					</div>
					<div class="payment_content_benefits">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="payinlineRadioOptions" id="inlineRadio1" value="option1" checked="checked">
							<label class="form-check-label" for="inlineRadio1">신용카드</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="payinlineRadioOptions" id="inlineRadio2" value="option2">
							<label class="form-check-label" for="inlineRadio2">무통장입금</label>
						</div>
					</div>
					<div class="bankbook_no_name">
						<span class="bankbook_no_name_span">후원전용 계좌 : 농축협 352-0168-6051-03 (예금주 : 울타리 팀장 김지혜)</span>
					</div>
					<div class="bankbook_no_name">
						<span>입금자 명 </span>
						<input type="text">
					</div>
				</div>
				<button class="nextbtn">후원하기</button>
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