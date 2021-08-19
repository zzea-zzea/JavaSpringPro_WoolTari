<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:choose>
	<c:when test="${ fn:endsWith(fp,'.jpg')
					or fn:endsWith(fp,'.png')
					or fn:endsWith(fp,'.gif')
					or fn:endsWith(fp,'.webp')  }"> <!-- images 이미지 파일 -->
		<div id="file_show_${vs.index}" class="image_file">
			<b> ${vs.index}번 이미지 경로: ${fp} </b> <br>
			<img src= "${pageContext.request.contextPath}${fp}"  alt="오리지널 파일명: ${fn:split(fp, '_')[1]}"  width="20%">
		</div>
	</c:when>
	<c:when test="${not fn:endsWith(fp,'.jpg')
					and not fn:endsWith(fp,'.png')
					and not fn:endsWith(fp,'.gif')
					and not fn:endsWith(fp,'.webp') }"> 
		<div id="file_show_${vs.index}" class="normal_file"> 
			<b> ${vs.index}번 일반파일 경로: ${fp} </b><br>
			<a href="${pageContext.request.contextPath}${fp}">
			 :: 첨부파일 download LINK :: </a>
		</div>		
	</c:when>
	<c:otherwise>
		<b>처리 할 수 없는 파일 포맷?</b>
	</c:otherwise>
</c:choose>