<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	   $("#selectpicker_le").change(function() {
	      if($('#selectpicker_le option:selected').val() == '1') {
	         $('.support_title_option').text("미혼모 시설");
	         $('.support_content_option').html(
	               "경제적으로 취약한 미혼모,부가 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,치료비를 위해 기부금을 전달합니다.");
	         $(".imgClass").attr("src", "${path}/resources/img/main/main2.png");
	      } else if($('#selectpicker_le option:selected').val() == '2') {
	         $('.support_title_option').text("한부모 가정");
	         $('.support_content_option').html(
	               "경제적으로 취약한 한부모가정이 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,치료비를 위해 기부금을 전달합니다.");
	         $(".imgClass").attr("src", "${path}/resources/img/main/main1.png");
	      } else if($('#selectpicker_le option:selected').val() == '3') {
	         $('.support_title_option').text("법인 재단");
	         $('.support_content_option').html(
	               "경제적으로 취약한 가정을  <br>위해 저희가 심사해서 찾은 재단에 <br>기부금을 전달합니다");
	         $(".imgClass").attr("src", "${path}/resources/img/main/main4.png");
	      }
	   });
	});
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support_input.woo" method="post">
	<input type="hidden" name="mbId" value="${mbPKId}">
		<main class="support_main">
			<div class="support_box s ma">
				<div class="support_content_title">
					<h2>후원하기</h2>
					<span>선택한 사업에 후원하는 방법으로, 지원이 시급한 이웃에게 전달되어 도움을 줄 수 있습니다. </span>
				</div>
				<div class="support_content_benefits">
					<div class="support_content_benefits_ti le">
						<h3>후원처 선택</h3>
					</div>
					<div class="support_content_benefits_txt sm">
						<div class="support_content_benefits_con img">
							<img class="imgClass" src="${path}/resources/img/main/main2.png" alt="img">
						</div>
						<div class="support_content_benefits_con">
							<div class="support_content_benefits_select_con">
								<select class="selectpicker le" data-size="5" id="selectpicker_le" name="support_center_type">
									<option value="1" <c:if test="${support_center_type == 1}"> selected </c:if>>한부모 가정</option>
									<option value="2" <c:if test="${support_center_type == 2}"> selected </c:if>>미혼모 시설</option>
									<option value="3" <c:if test="${support_center_type == 3}"> selected </c:if>>법인 재단</option>
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
							<input class="form-check-input" type="radio" name="price" id="inlineRadio1" value="20000" <c:if test="${price == 20000}"> selected </c:if>>	
							<label class="form-check-label" for="inlineRadio1">20,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="price" id="inlineRadio2" value="50000" <c:if test="${price == 50000}"> selected </c:if>>
							<label class="form-check-label" for="inlineRadio2">50,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="price" id="inlineRadio3" value="100000" <c:if test="${price == 100000}"> selected </c:if>>
							<label class="form-check-label" for="inlineRadio3">100,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="price" id="inlineRadio5" value="200000" <c:if test="${price == 200000}"> selected </c:if>>
							<label class="form-check-label" for="inlineRadio5">200,000원</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="price" id="inlineRadio5" value="300000" <c:if test="${price == 300000}"> selected </c:if>>
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
								<td><c:if test="${ismember eq 1}">일반 회원</c:if>
								<c:if test="${ismember eq 9}">관리자</c:if>
								<c:if test="${ismember eq 2}">법인 재단</c:if></td>
							</tr>
							<tr>
								<td><c:if test="${ismember eq 1}">주민번호</c:if>
								<c:if test="${ismember eq 9}">주민번호</c:if>
								<c:if test="${ismember eq 2}">사업자 번호</c:if></td>
								<td><c:if test="${ismember eq 1}"><input type="text" name="first_num" maxlength="6" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">&nbsp;-&nbsp;<input name="second_num" type="password" maxlength="7" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></c:if>
								<c:if test="${ismember eq 9}"><input type="text" name="first_num" maxlength="6" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">&nbsp;-&nbsp;<input name="second_num" type="password" maxlength="7" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></c:if>
								<c:if test="${ismember eq 2}"><input type="text" name="first_num" maxlength="30" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></c:if></td>
							</tr>
							<tr>
								<td>성명</td>
								<td><c:out value="${userName}"/></td>
							</tr>
							<tr class="success">
								<td>생년월일</td>
								<td><c:out value="${brithDay}"/></td>
							</tr>
							<tr class="danger">
								<td>휴대폰 번호</td>
								<td><c:out value="${phoneNumber}" /></td>
							</tr>
							<tr class="danger">
								<td>이메일주소</td>
								<td><c:out value="${member.email}"/></td>
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
							<input class="form-check-input" type="radio" name="payinlineRadioOptions" id="inlineRadio2" value="option2" checked>
							<label class="form-check-label" for="inlineRadio2">무통장입금</label>
						</div>
					</div>
					<div class="bankbook_no_name">
						<span>입금자 명 </span>
						<input type="text" name="depositor_name">
					</div>
					<div class="bankbook_no_name">
						<span class="bankbook_no_name_span">후원전용 계좌 : 농축협 352-0168-6051-03 (예금주 : 김지혜)</span>
					</div>
				</div>
				<div class="nextbtn"><button class="nextbtn" type="submit">후원하기</button></div>
			</div>
		</main>
	</form>
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