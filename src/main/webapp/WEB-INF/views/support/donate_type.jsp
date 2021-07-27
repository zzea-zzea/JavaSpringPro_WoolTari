<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script>
	function showCard() {
		var cash = document.getElementById("donate_cash");
		var card = document.getElementById("donate_card");
		cash.style.visibility = "hidden";
		card.style.visibility = "visible";
	}
	function showCash() {
		var cash = document.getElementById("donate_cash");
		var card = document.getElementById("donate_card");
		card.style.visibility = "hidden";
		cash.style.visibility = "visible";
	}
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="donate_type.woo">
	<div class="donate">
		<div class="donate_type">
			<h3>후원방법</h3>
		</div>
		<hr>
		<div class="choose_money">
			<form action="">
				<a class="choose_money_name">● 후원금액을 선택해주세요</a> <br> <input
					type="radio" name="donate" value="1" />&nbsp;1만원 &nbsp;&nbsp; <input
					type="radio" name="donate" value="2" checked />&nbsp;5만원
				&nbsp;&nbsp; <input type="radio" name="donate" value="3" />&nbsp;10만원
				&nbsp;&nbsp; <input type="radio" name="donate" value="4" />&nbsp;100만원
				&nbsp;&nbsp; <input type="radio" name="donate" value="5">&nbsp;
				<input type="text" class="input_money" placeholder="금액을 입력해주세요"
					oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />원
			</form>
		</div>
		<br>
		<div class="choose_type">
			<form action="">
				<a class="choose_type_name">● 후원금 납입 방법을 선택해주세요</a> <br> <input
					type="radio" name="donate_type" value="1" id="card"
					onclick="showCard()" />&nbsp;신용카드 &nbsp;&nbsp; <input type="radio"
					name="donate_type" value="2" id="cash" onclick="showCash()" />&nbsp;무통장입금
				&nbsp;&nbsp;
			</form>
		</div>
		<br> <br> <br>
		<div id="donate_card" class="donate_card">
			<div class="donate_card_title">
				<h3>신용카드 결제</h3>
			</div>
			<div class="result_btn">
				<a href="endsupport.jsp	"><button class="next_btn">다음단계</button></a>
				<button class="cancle_btn">취소</button>
			</div>
		</div>
		<div id="donate_cash" class="donate_cash">
			<div class="donate_cash_title">
				<h3>무통장 입금</h3>
			</div>
			<br> <br>
			<div class="account">ibk 기업은행
				111-111111-11-111 관리자</div>
				<br>
			<div class="donate_user">
				입금자명 <input type="text" placeholder="이름을 입력해주세요">
			</div>
			<div class="result_btn">
				<a href="${pageContext.request.contextPath}/endsupport.woo"><button class="next_btn">다음단계</button></a>
				<button class="cancle_btn">취소</button>
			</div>
		</div>
	</div>
	</form>
</body>
</html>