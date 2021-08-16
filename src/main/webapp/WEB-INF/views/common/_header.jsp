<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
function noLogin(){
	alert('로그인 후 이용가능');
	//location.href = 'article_show.my?atId=' + atId; 
	location.href = 
		'${pageContext.request.contextPath}/login.woo';
}
function showMyPage(mbId) {
	
	location.href = 
		'${pageContext.request.contextPath}/mypage.woo?mbId='
				+ mbId;
		// 동기방식 get 이동... 			
}

function logout(){
	if( confirm("정말 로그아웃 하시겠습니까?")){
		location.href = href="${pageContext.request.contextPath}/logout.woo";
	}
}
</script>
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
						<li><a href="${pageContext.request.contextPath}/info_center.woo">시설 정보</a></li>
					</ul></li>
				<li class="dropdown"><a href="${pageContext.request.contextPath}/support_info.woo"><span>후원</span> <i class="bi bi-chevron-down"></i></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/support_info.woo">후원 안내</a></li>
						<c:if test="${not empty mbLoginName}">
						<li><a href="${pageContext.request.contextPath}/support.woo?mbId=${mbPKId}">후원 하기</a></li>
						</c:if>
						<c:if test="${empty mbLoginName}">
						<li><a onclick="noLogin()">후원 하기</a></li>
						</c:if>
					</ul></li>
				<li class="dropdown le"><a href="${pageContext.request.contextPath}/content.woo"><span>소식</span></a></li>

				<c:if test="${empty mbLoginName}">
               <li><a class="btn_def"
                  href="${pageContext.request.contextPath}/login.woo"> Login</a></li>
            </c:if>
            <c:if test="${not empty mbLoginName}">
                <li><a class="btn_def" onclick="logout()">Logout</a></li>
            </c:if>
				<c:if test="${not empty mbLoginName}">
					<li><a class="btn_def" onclick="showMyPage('${mbPKId}')">Mypage</a></li>
				</c:if>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
	</div>
</header>