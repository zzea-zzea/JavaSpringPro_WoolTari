<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="new_content.woo">
	<div class="locate_new_content ma">
		<div class="lcoate_title">&nbsp;&nbsp;홈페이지 ▷ 소식 ▷ 공지사항 ▶ 새 글 쓰기</div>
	</div>
	<div class="write_first_box">
		<div class="new_title">
			<h3 class="title">
				<span>새</span> 글 쓰기
			</h3>
		</div>
		<hr>
		<div class="new_write_title">
			<div class="write_title">
				<div class="left_title">
					<p class="title">제목:</p>
					<input type="text" class="input_title" placeholder="제목을 입력하세요."
						size="60px">
				</div>
				<div class="rigth_category">
					<p class="category">카테고리:</p>
					<select class="category_sel">
						<option value="0" selected="selected">= 선택 =</option>
						<option value="1">일상</option>
						<option value="2">지원 정보</option>
						<option value="3">병원 정보</option>
						<option value="4">시설 정보</option>
						<option value="5">육아 정보</option>
						<option value="6">무료 나눔</option>
					</select>
				</div>
			</div>
		</div>
		<div class="new_write_content_box">
			<div class="new_write_content">
				<textarea class="new_content" name="new_content" placeholder="내용 입력"
					rows="20" cols="111" maxlength="1024" style="resize: none;"></textarea>
				<div class="counter">(0 / 1024)</div>
				<script>
					
				</script>
			</div>
			<div id="preview"></div>
			<input type="file" name="upload" id='upload' class="inp-img"
				accept=".gif, .jpg, .png" multiple="multiple">
			<button type="button" class="btn-delete">삭제</button>
			<div class="input_btn">
				<button class="input_btn" onclick="write_check()">작성하기</button>
				<button class="cancle_btn" onclick="cancle_check()">목록으로</button>
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
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
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
		var answer = confirm("작성을 그만두시겠습니까?")
		if (answer == true) {
			location.replace('${pageContext.request.contextPath}/content.woo');
		} else {
		}
	}
	function write_check() {
		var answer = confirm("등록하시겠습니까?")
		if (answer == true) {
			alert("등록되었습니다.");
			location.replace('${pageContext.request.contextPath}/content.woo');
		} else {
		}
	}
</script>
</html>