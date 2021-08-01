<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="mypage.woo">
		<main class="childcare_main my">
			<div class="childcare_box ma">
				<div class="side_bar my">
					<ul>
						<li class="side_bar_content"><a>회원 정보 수정</a></li>
						<li class="side_bar_content"><a>후원 내역조회</a></li>
						<li class="side_bar_content"><a>내 게시글 조회</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>내 정보 수정</h2>
							<span>변경 하실 회원정보는 여기서 변경 해주세요!</span>
						</div>
						<div class="childcare_content my">
							<div class="childcare_content_menu mypage">
								<table class="table ">
									<tbody>
										<tr>
											<td>이름</td>
											<td>이주현</td>
										</tr>
										<tr>
											<td>휴대폰 번호</td>
											<td class="phone_si"><input type="text" maxlength="3">&nbsp;-&nbsp;<input
												type="password" maxlength="4">&nbsp;-&nbsp;<input
												type="password" maxlength="4"></td>
										</tr>
										<tr>
											<td>성별</td>
											<td>남자</td>
										</tr>
										<tr class="success">
											<td>생년월일</td>
											<td>1997 - 08 - 02</td>
										</tr>
										<tr class="danger">
											<td>이메일주소</td>
											<td>yoojoo300@github.com</td>
										</tr>
										<tr class="danger">
											<td>비밀번호</td>
											<td><input type="text" maxlength="20"></td>
										</tr>
										<tr class="danger">
											<td>비밀번호 확인</td>
											<td><input type="text" maxlength="20"></td>
										</tr>
									</tbody>
								</table>
								<button class="edit_btn">수정</button>
								<button class="edit_btn re">탈퇴</button>
							</div>

						</div>
					</section>
				</div>
			</div>
		</main>
	</form>
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>