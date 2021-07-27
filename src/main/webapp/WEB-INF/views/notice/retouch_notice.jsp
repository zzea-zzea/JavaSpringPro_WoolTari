<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script>
	function cancle_check() {
		var answer = confirm("수정을 그만하시겠습니까?.")
		if (answer == true) {
			location.replace('${pageContext.request.contextPath}/notice_view.woo');
		} else {
		}
	}
	function retouch_check() {
		var answer = confirm("수정하시겠습니까?.")
		if (answer == true) {
			alert("수정되었습니다.");
			location.replace('${pageContext.request.contextPath}/notice_view.woo');
		} else {
		}
	}
</script>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="retouch_notice.woo">
		<div class="locate_retouch_notice ma">
			<div class="lcoate_title">&nbsp;&nbsp;홈페이지 ▷ 소식 ▷ 공지사항 ▶ 수정하기</div>
		</div>
		<div class="write_first_box">
			<div class="write_title">
				<h3 class="title">
					<span>수</span>정 하기
				</h3>
			</div>
			<hr>
			<div class="new_write_title">
				<p class="title">제목:
				<p>
					<input type="text" class="input_title" value="한부모 가정 울타리."
						size="60px">
				<p class="writer">작성자:</p>
				<p class="write_user">관리자</p>
				<p class="date">날자:</p>
				<p class="write_date">2021/07/10</p>
			</div>
			<div class="new_write_content_box">
				<div class="new_write_content">
					<textarea class="new_content" rows="20" cols="111" maxlength="1200"
						style="resize: none;">동해 물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세. 남산 위에 저 소나무, 철갑을 두른 듯 바람 서리 불변함은 우리 기상일세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로 길이 보전하세.</textarea>
					<div class="counter">(0 / 1024)</div>
				</div>
				<div id="preview"></div>
				<input type="file" name="upload" id='upload' class="inp-img"
					accept=".gif, .jpg, .png" multiple="multiple">
				<button type="button" class="btn-delete">삭제</button>
				<div id='preview'></div>
				<div class="input_btn">
					<button class="input_btn" onclick="retouch_check()">수정하기</button>
					<button class="cancle_btn" onclick="cancle_check()">돌아가기</button>
				</div>
			</div>
		</div>
	</form>
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
</script>
</html>