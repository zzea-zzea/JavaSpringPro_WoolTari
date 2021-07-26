<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
<script>
	$(document).on('click', '[data-toggle="lightbox"]', function(event) {
		event.preventDefault();
		$(this).ekkoLightbox();
	});
</script>
<style>
.col-md-8 .row .col-sm-4 {
	widows: 300px;
	height: 60px;
}
</style>
</head>

<body>
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="row">
				<a href="${path}/resources/img/reply/woman.png" data-toggle="lightbox"
					data-gallery="example-gallery" class="col-sm-4"> <img
					src="${path}/resources/img/reply/woman.png" class="img-fluid rounded">
				</a> <a href="	${path}/resources/img/reply/man.png" data-toggle="lightbox"
					data-gallery="example-gallery" class="col-sm-4"> <img
					src="${path}/resources/img/reply/man.png" class="img-fluid rounded">
				</a> <a href="${path}/resources/img/reply/city.png" data-toggle="lightbox"
					data-gallery="example-gallery" class="col-sm-4"> <img
					src="${path}/resources/img/reply/city.png" class="img-fluid rounded">
				</a>
			</div>
		</div>
	</div>


</body>
</html>