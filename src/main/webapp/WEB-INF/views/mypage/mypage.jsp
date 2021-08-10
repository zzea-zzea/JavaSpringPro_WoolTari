<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
<!-- 	<form action="mypage.woo"> -->
		<main class="childcare_main my">
			<div class="childcare_box myboa ma">
				<div class="side_bar my">
					<ul>
						<li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/mypage.woo">회원 정보 수정</a></li>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_sup.woo">후원 내역조회</a></li>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_boa.woo">내 게시글 조회</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						<div class="childcare_section_title">
							<h2>회원 정보 수정</h2>
							<span>변경 하실 회원정보는 여기서 변경 해주세요!</span>
						</div>
						<div class="childcare_content my">
							<div class="childcare_content_menu mypage">
								<input type="hidden" name="MemberIndex" value="${member.MemberIndex}">
								<input type="hidden" name="Id" value="${member.Id}">
								<input type="hidden" name="NickName" value="${member.NickName}">
								<input type="hidden" name="IsMember" value="${member.IsMember}">
								<input type="hidden" name="NumMember" value="${member.NumMember}">
								<input type="hidden" name="Buisness" value="${member.Buisness}">
								<input type="hidden" name="Phone" value="${member.Phone}">
								<table class="table ">
									<tbody>
										<tr>
											<td>이름</td>
											<td><input type="text" id='Name' name='name' 
											size='20' placeholder="회원실명" required value="${member.Name}"></td>
										</tr>
										<tr>
											<td>휴대폰 번호</td>
											<td class="phone_si"><input type="text" maxlength="3">&nbsp;-&nbsp;<input
												type="password" maxlength="4">&nbsp;-&nbsp;<input
												type="password" maxlength="4"></td>
										</tr>
										<tr>
											<td>성별</td>
											<td>${member.Gender}</td>
										</tr>
										<tr class="success">
											<td>생년월일</td>
											<td>${member.Brith}</td>
										</tr>
										<tr class="danger">
											<td>이메일주소</td>
											<td>${member.Email}</td>
										</tr>
										<tr class="danger">
											<td>비밀번호</td>

											<td><input type="text" maxlength="20" name="Pw" value="${member.Pw}"></td>

											<td><input type="text" maxlength="20" name="Pw" value="${member.Pw}"><span>&nbsp;&nbsp;* 비밀번호가 일치 하지 않습니다</span></td>

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
<!-- 	</form> -->
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
	<%@ include file="../common/_script.jsp"%>
</body>
</html>