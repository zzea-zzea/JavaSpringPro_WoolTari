<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="mypage_sup.woo">
		<main class="childcare_main my">
			<div class="childcare_box myboa ma">
				<div class="side_bar my">
					<ul>
						<li class="side_bar_content mypage "><a href="${pageContext.request.contextPath}/mypage.woo">회원 정보 수정</a></li>
						<li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/mypage_sup.woo">후원 내역조회</a></li>
						<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_boa.woo">내 게시글 조회</a></li>
					</ul>
				</div>
				<div class="info_content">
					<section class="childcare_section">
						
						<div class="childcare_content my">
							<h3 class="mon_history">2020년 01월</h3>
							<div class="childcare_content_menu mypage">
								<table class="table pa ">
									<tbody>
										<tr>
											<td>날짜</td>
											<td>2020-01-25</td>
										</tr>
										<tr>
											<td>후원처</td>
											<td>미혼모시설</td>
										</tr>
										<tr>
											<td>후원금액</td>
											<td>50,000 원</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="childcare_content_menu mypage">
								<table class="table ">
									<tbody>
										<tr>
											<td>날짜</td>
											<td>2020-01-25</td>
										</tr>
										<tr>
											<td>후원처</td>
											<td>미혼모시설</td>
										</tr>
										<tr>
											<td>후원금액</td>
											<td>50,000 원</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="childcare_content my">
							<h3 class="mon_history">2020년 02월</h3>
							<div class="childcare_content_menu mypage">
								<table class="table ">
									<tbody>
										<tr>
											<td>날짜</td>
											<td>2020-02-05</td>
										</tr>
										<tr>
											<td>후원처</td>
											<td>한부모 가정</td>
										</tr>
										<tr>
											<td>후원금액</td>
											<td>50,000 원</td>
										</tr>
									</tbody>
								</table>
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