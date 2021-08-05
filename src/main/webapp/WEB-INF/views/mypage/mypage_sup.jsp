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
						<div class="childcare_section_title">
							<h2>후원 내역조회</h2>
							<span>후원 내역 조회는 이곳을 통해 확인해 주세요!</span>
						</div>
						<div class="childcare_content my">
							<div class="table-wrap">
								<table class="tables myaccordion table-hover" id="accordion">
									<thead>
										<tr>
											<th>NO.</th>
											<th>후원처</th>
											<th>결제 방법</th>
											<th>후원금액</th>
											<th>후원 날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
											<th scope="row">1</th>
											<td>미혼모 시설</td>
											<td>카드</td>
											<td>50,000원</td>
											<td>2021-05-28</td>
										</tr>
										<tr data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" class="collapsed">
											<th scope="row">2</th>
											<td>미혼모 시설</td>
											<td>카드</td>
											<td>50,000원</td>
											<td>2021-05-28</td>
										</tr>
										<tr data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" class="collapsed">
											<th scope="row">3</th>
											<td>미혼모 시설</td>
											<td>카드</td>
											<td>50,000원</td>
											<td>2021-05-28</td>
										</tr>
										<tr data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour" class="collapsed">
											<th scope="row">4</th>
											<td>미혼모 시설</td>
											<td>카드</td>
											<td>50,000원</td>
											<td>2021-05-28</td>
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