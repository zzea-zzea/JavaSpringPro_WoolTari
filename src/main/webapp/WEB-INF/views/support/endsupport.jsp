<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<style>
.endsupport_box {
	height: 1000px;
}
.endsupport_first_box {
	border: 1px solid;
	height: 1000px;
	margin: 150px auto;
	width: 1000px;
}
.endsupport_title {
	border: 1px solid;
	padding: 15px 0;
}
.endsupport_title h3 {
	text-align: center;
	font-weight: bolder;
}
.endsupport_imfomation {
	border: 1px solid;
	height: 400px;
    margin: 100px auto;
}
.endsupport_imfomation .endsupport_imfomation_one {
	height: 80px;
}
.endsupport_imfomation .endsupport_imfomation_one p {
	font-size: 20px;
    margin: 40px;
    font-weight: bold;
}
.endsupport_imfomation .endsupport_imfomation_one span {
	color: green;
}
.endsupport_imfomation_two {
	height: 60px;
}
.endsupport_imfomation_two p {
	font-size: 20px;
    margin: 40px;
    font-weight: normal;
}
.endsupport_imfomation_three {
	height: 100px;
}
.endsupport_imfomation_three p {
	font-size: 20px;
    margin: 40px;
    font-weight: bold;
}
.endsupport_imfomation_four {
	height: 50px;
}
.endsupport_imfomation_four p {
    float: right;
    font-size: 20px;
    font-weight: 500;
    color: hotpink;
   	margin-right: 40px;
}
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
			</div>
			<div class="endsupport_receipt">
				
			</div>
		</div>
	</div>
	</form>
</body>
</html>