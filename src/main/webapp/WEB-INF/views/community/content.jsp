<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script type="text/javascript">
	function showOneArticle(atId) {
		//location.href = 'article_show.my?atId=' + atId; 
		location.href = 
			'${pageContext.request.contextPath}/content_view.woo?atId='
					+ atId;
			// 동기방식 get 이동... 			
	}
	
	function showLoginPage() {
		alert('로그인 후 이용가능');
		//location.href = 'article_show.my?atId=' + atId; 
		location.href = 
			'${pageContext.request.contextPath}/login.woo';
					
			// 동기방식 get 이동... 			
	}
	$(document).ready(function() {
		var num = "${ctSize}";
		var step;
		for(step = 0; step < num; step++)
		$('#a').text(step);
		console.log(num);
	});
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
<!-- 	<form action="content.woo"> -->
	<main class="content_main"> 
				<div id="border">
				<div class="community_first_box">
					<div class="community_title">
						<h3>
							<span style="color: pink">커</span>뮤니티
						</h3>
					</div>
					<hr>
					<div class="search">
						<div class="search_main">
						<form action="${pageContext.request.contextPath}/content_search.woo" method="post">
							<select class="s_sel" id="keyword" name="keyword" >
								<option value="1" ${param['target'] eq 'cate' ? ' selected':''}>일상</option>
								<option value="2" ${param['target'] eq 'cate' ? ' selected':''}>지원 정보</option>
								<option value="3" ${param['target'] eq 'cate' ? ' selected':''}>병원 정보</option>
								<option value="4" ${param['target'] eq 'cate' ? ' selected':''}>시설 정보</option>
								<option value="5" ${param['target'] eq 'cate' ? ' selected':''}>육아 정보</option>
								<option value="6" ${param['target'] eq 'cate' ? ' selected':''}>무료 나눔</option>
								<option value="7" ${param['target'] eq 'cate' ? ' selected':''}>공지 사항</option>
							</select>
							<button class="search_btn" type="submit">검색</button>
							</form>
							<c:if test="${not empty mbLoginName}">
							<a href="${pageContext.request.contextPath}/new_content.woo"><input type="submit"
								class="new_write_btn" value="글쓰기"></a>
							</c:if>
						</div>
					</div>
					<br>
					<div class="community_content_table">
						<div class="community_content_table_main">
							<table class="board_list">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>글쓴이</th>
										<th>작성일</th>
										<th>조회</th>
									</tr>
								</thead>

								<tbody>
								<c:if test="${empty ctList}">
						<h4> 게시글이 현재 하나도 없네요! </h4>
				</c:if>	
					<c:if test="${not empty ctList}">			
					<c:forEach var="ct" items="${ctList}" varStatus="vs">
						<c:if test="${not empty mbLoginName}">
						<tr onclick="showOneArticle('${ct.board_index}')">
						</c:if>
						<c:if test="${empty mbLoginName}">
						<tr onclick="showLoginPage()">
						</c:if>
							<td><c:out value="${ctSize}" default="0"/></td>
							<td><c:out value="${ct.title}" default="제목없음"/></td> 
							<td><c:out value="${mbLoginList[vs.index]}" default="이름없음"/></td>
							<td><fmt:formatDate value="${ct.write_date}" pattern="yyyy년 MM월 dd일" /></td>
							<td><c:out value="${ct.views}" default="0"/></td>
						</tr>
					</c:forEach>
					</c:if>	
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="paging">
					<!-- 			<a href="#" class="bt">첫 페이지</a> -->
					<c:if test="${pn > 1}">
					<a href="${pageContext.request
						.contextPath}/content.woo?pg=${pn-1}" class="bt">이전 페이지</a>
					</c:if>
					
<!-- 					1페이지부터 maxPg페이지까지 인덱스 순차 표시 -->
			<c:forEach begin="1" end="${maxPg}" step="1" varStatus="vs">
			
				<c:if test="${vs.current eq pn}"><a><b 
					style="color: blue; 
					font-size: 1.2em;">${vs.current}</b></a></c:if>		
				
				<c:if test="${vs.current ne pn}">
					<a href="${pageContext.request
  						.contextPath}/content.woo?pg=${vs.current}"  
						>${vs.current}</a>
				</c:if>
				
			</c:forEach>
			
			<c:if test="${pn < maxPg}">
					<a href="${pageContext.request
						.contextPath}/content.woo?pg=${pn+1}" class="bt">다음 페이지</a>
			</c:if>
					<!-- 				 <a href="#" class="bt">마지막 페이지</a>  -->
				</div>
			</div>
			</main>
<!-- 	</form> -->
</body>
</html>