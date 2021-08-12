<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
	<%@ include file="../common/_header.jsp"%>
		<main class="retouch_content_main">
			<div class="write_first_box">
				<div class="write_title">
					<h3 class="title">
						<span>수</span>정 하기
					</h3>
				</div>
				<hr>
				<form method="post" action="${pageContext
			.request.contextPath}/community_update.woo">
				<div class="new_write_title">
				<input type="hidden" name="board_index" value="${community.board_index}">
				<input type="hidden" name="views" value="${community.views}">
				<input type="hidden" name="member_index" value="${community.member_index}">
					<p class="title">제목:
					<p>
						<input type="text" name="title" class="input_title" value="${community.title}"
							size="60px">
					<p class="category">카테고리:</p>
					<p class="category_sel">${community.cate}</p>
					<p class="writer">작성자:</p>
					<p class="write_user">${mbLoginList}</p>
					<p class="date">날자:</p>
					<p class="write_date"><fmt:formatDate value="${community.write_date}" pattern="yyyy년 MM월 dd일" /></p>
				</div>
				<div class="new_write_content_box">
					<div class="new_write_content">
						<textarea name='content' class="new_content" rows="20" cols="111"
							maxlength="1200" style="resize: none;">${
							community.content}</textarea>
						<div class="counter">(0 / 1024)</div>
					</div>
					<div id="preview"></div>
					<c:if test="${not empty param['totalMB']}">
						<span class="unit_mb" style="color: blue">
							<b> 총 <c:out value="${param.countFiles}" 
								default="0"/>  개
							 파일들용량: ${param.totalMB}MB</b>
						</span>
					</c:if>
					
					<c:if test="${fpCount gt 0}">
						<c:forEach var="fp" items="${fps}" varStatus="vs">
						 <%@ include file="_file.jsp" %>
						</c:forEach>					
					</c:if>
					<c:if test="${fpCount eq 0}">
						파일이 없어요!
					</c:if>
					<input type="file" name="upfiles" class="inp-img" id='upload'
							size="64" placeholder="첨부 파일명"  
							multiple="multiple">
					<button type="button" class="btn-delete">삭제</button>
					<div id='preview'></div>
					<div class="input_btn">
						<button class="input_btn" onclick="retouch_check()">수정하기</button>
						<button class="cancle_btn" onclick="cancle_check()">돌아가기</button>
					</div>
				</div>
			</form>
			</div>
		</main>
</body>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script id="rendered-js">
	$(function() {
		$('.new_content').keyup(function(e) {
			var content = $(this).val();
			// 			$(this).height((content.split('\n').length + 1) * 1.5 + 'em');
			$('.counter').html(content.length + '/1024');
		});
		$('.new_content').keyup();
	});
	//# sourceURL=pen.js
</script>
<script type="text/javascript">
	var upload = document.querySelector('#upload');
	var preview = document.querySelector('#preview');

	upload.addEventListener('change', function(e) {
		var get_file = e.target.files;

		var image = document.createElement('img');
		$(image).height('10em');
		$(image).width('10em');
		var reader = new FileReader();

		reader.onload = (function(aImg) {
			console.log(1);

			return function(e) {
				console.log(3);
				aImg.src = e.target.result
			}
		})(image)

		if (get_file) {
			reader.readAsDataURL(get_file[0]);
			console.log(2);
		}

		preview.appendChild(image);
	})
	// 등록 이미지 삭제 ( input file reset )
	function resetInputFile($input, $preview) {
		var agent = navigator.userAgent.toLowerCase();
		if ((navigator.appName == 'Netscape' && navigator.userAgent
				.search('Trident') != -1)
				|| (agent.indexOf("msie") != -1)) {
			// ie 일때
			$input.replaceWith($input.clone(true));
			$preview.empty();
		} else {
			//other
			$input.val("");
			$preview.empty();
		}
	}

	$(".btn-delete").click(function(event) {
		var $input = $(".inp-img");
		var $preview = $('#preview');
		resetInputFile($input, $preview);
	});
	function cancle_check() {
		var answer = confirm("수정을 그만하시겠습니까?.")
		if (answer == true) {
			location
					.replace('${pageContext.request.contextPath}/content_view.woo');
		} else {
		}
	}
	function retouch_check() {
		var answer = confirm("수정하시겠습니까?.")
		if (answer == true) {
			alert("수정창으로 이동합니다.");
			location
					.replace('${pageContext.request.contextPath}/content_view.woo');
		} else {
		}
	}
</script>
</html>