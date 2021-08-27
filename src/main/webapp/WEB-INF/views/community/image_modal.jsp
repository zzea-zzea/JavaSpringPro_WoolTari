<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../common/_link.jsp"%>
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
            <a href="https://unsplash.it/1200/768.jpg?image=251" data-toggle="lightbox" class="col-sm-4" data-title="모달 제목" data-footer="모달 푸터내용">
                <img src="https://unsplash.it/600.jpg?image=251" class="img-fluid rounded">
            </a>
            <a href="https://unsplash.it/1200/768.jpg?image=252" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-4">
                <img src="https://unsplash.it/600.jpg?image=252" class="img-fluid rounded">
            </a>
            <a href="https://unsplash.it/1200/768.jpg?image=253" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-4">
                <img src="https://unsplash.it/600.jpg?image=253" class="img-fluid rounded">
            </a>
        </div>
    </div>
</div>
<script>
$(document).on('click', '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
});
</script>
</body>
</html>