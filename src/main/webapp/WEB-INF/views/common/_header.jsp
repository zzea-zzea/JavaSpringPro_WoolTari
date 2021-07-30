<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header id="header" class="header fixed-top d-flex align-items-center">
	<div class="container d-flex align-items-center justify-content-between">
		<div id="logo">
			<h1>
				<a id="logotxt" class="nav-link scrollto active" href="${pageContext.request.contextPath}/main.woo"><span>W</span>ooltari</a>
			</h1>
		</div>
		<nav id="navbar" class="navbar">
			<ul>
				<li class="dropdown"><a href="${pageContext.request.contextPath}/info_policy.woo"><span>정보</span> <i class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/info_policy.woo">정책 정보</a></li>
						<li><a href="${pageContext.request.contextPath}/info_childcare.woo">육아 정보</a></li>
						<li><a href="${pageContext.request.contextPath}/info_center.woo">시설 및 병원</a></li>
					</ul></li>
				<li class="dropdown"><a href="${pageContext.request.contextPath}/support_info.woo"><span>후원</span> <i class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/support_info.woo">후원 안내</a></li>
						<li><a href="${pageContext.request.contextPath}/support.woo">후원 하기</a></li>
					</ul></li>
				<li class="dropdown le"><a href="${pageContext.request.contextPath}/content.woo"><span>소식</span></a></li>

				<li><a class="btn_def" href="${pageContext.request.contextPath}/login.woo">Login</a></li>
				<li><a class="btn_def" href="${pageContext.request.contextPath}/mypage.woo">Mypage</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
	</div>
</header>