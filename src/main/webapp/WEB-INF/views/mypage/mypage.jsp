<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
	$(document).ready(function() {
		var check = "${member.gender}";
		var msg = "";
		switch(check) {
		case "1":
			msg = "남자";
			break;
		case "2":
			msg = "여자";
			break;
		}
			$('#a').text(msg);
	});
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="mypage_sumit.woo" method="post">	
	<input type="hidden" name="mbId" value="${mbPKId}">
		<main class="childcare_main my">
			<div class="childcare_box myboa ma">
				<div class="side_bar my">
					<ul>
						<li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/mypage.woo?mbId=${mbPKId}">회원 정보</a></li>
<%-- 						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/retouch_mypage.woo?mbId=${mbPKId}">회원 정보 수정</a></li> --%>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_sup.woo">후원 내역조회</a></li>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_boa.woo">내 게시글 조회</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>회원 정보</h2>
							<span>변경 하실 회원정보는 여기서 변경 해주세요!</span>
						</div>
						<div class="childcare_content my">
							<div class="childcare_content_menu mypage">
								<table class="table">
									<tbody>
										<tr>
											<td>이름</td>
											<td><c:out value="${userName}"/></td>
										</tr>
										<tr>
											<td>전화번호</td>
											<td class="phone_si"><c:out value="${phoneNumber}"/></td>
										</tr>
										<tr>
											<td>성별</td>
											<td id="a"></td>
										</tr>
										<tr class="success">
											<td>생년월일</td>
											<td><c:out value="${brithDay}"/></td>
										</tr>
										<tr class="danger">
											<td>메일주소</td>
											<td><c:out value="${member.email}"/></td>
										</tr>
										<tr class="danger">
											<td>비밀번호</td>
											<td><input type="password" maxlength="20" name="pw" required></td>
										</tr>
										<tr class="danger">
											<td>비밀번호 확인</td>
											<td><input type="password" maxlength="20" required="required"></td>
										</tr>
									</tbody>
								</table>
								<button class="edit_btn" type="submit" onclick="alert('${msg}')">수정</button>
							</div>
						</div>
					</section>
				</div>
			</div>
		</main>
	</form>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>