<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<style>

</style>
<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="endsupport.woo">
	<div class="endsupport_box">
		<div class="endsupport_first_box">
			<div class="endsupport_title">
				<h3>후원 완료</h3>
			</div>
			<hr>
			<div class="endsupport_imfomation">
				<div class="endsupport_imfomation_one">
					<p><span>50,000</span>원 기부 되었습니다.</p>
				</div>
				<div class="endsupport_imfomation_two">
					<p>모금함명</p>
				</div>
				<div class="endsupport_imfomation_three">
					<p>한부모가정에게 마음 따듯한 하루가 될 수 있도록</p>
				</div>
				<div class="endsupport_imfomation_four">
					<p>단체명&nbsp;&nbsp;&nbsp;너나우리xxx</p>
				</div>
			<div class="endsupport_btn">
				<a href="${pageContext.request.contextPath}/support.woo"><button class="end_btn">확인</button></a>
			</div>
			</div>
		</div>
	</div>
	</form>
</body>
</html>