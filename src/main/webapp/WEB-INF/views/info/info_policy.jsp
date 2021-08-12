<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
$(document).ready(function() {
	$("#showbtn").click(function() {
		if($('#parent option:selected').val() == '서울시'){
			if($('#child option:selected').val() == '송파구') {
				$('.policy_content_maintxt_span').text("서울시 송파구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '종로구') {
				$('.policy_content_maintxt_span').text("서울시 종로구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '중구') {
				$('.policy_content_maintxt_span').text("서울시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '용산구') {
				$('.policy_content_maintxt_span').text("서울시 용산구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '성동구') {
				$('.policy_content_maintxt_span').text("서울시 성동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '광진구') {
				$('.policy_content_maintxt_span').text("서울시 광진구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동대문구') {
				$('.policy_content_maintxt_span').text("서울시 동대문구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '중랑구') {
				$('.policy_content_maintxt_span').text("서울시 중랑구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '성북구') {
				$('.policy_content_maintxt_span').text("서울시 성북구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '강북구') {
				$('.policy_content_maintxt_span').text("서울시 강북구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '도봉구') {
				$('.policy_content_maintxt_span').text("서울시 도봉구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '노원구') {
				$('.policy_content_maintxt_span').text("서울시 노원구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '은평구') {
				$('.policy_content_maintxt_span').text("서울시 은평구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서대문구') {
				$('.policy_content_maintxt_span').text("서울시 서대문구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '마포구') {
				$('.policy_content_maintxt_span').text("서울시 마포구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '양천구') {
				$('.policy_content_maintxt_span').text("서울시 양천구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '강서구') {
				$('.policy_content_maintxt_span').text("서울시 강서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '구로구') {
				$('.policy_content_maintxt_span').text("서울시 구로구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '금천구') {
				$('.policy_content_maintxt_span').text("서울시 금천구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영등포구') {
				$('.policy_content_maintxt_span').text("서울시 영등포구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동작구') {
				$('.policy_content_maintxt_span').text("서울시 동작구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '관악구') {
				$('.policy_content_maintxt_span').text("서울시 관악구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서초구') {
				$('.policy_content_maintxt_span').text("서울시 서초구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '강남구') {
				$('.policy_content_maintxt_span').text("서울시 강남구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '강동구') {
				$('.policy_content_maintxt_span').text("서울시 강동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} 
		}
		
		if($('#parent option:selected').val() == '경기도'){
			if ($('#child option:selected').val() == '고양시') {
				$('.policy_content_maintxt_span').text("경기도 고양시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '과천시') {
				$('.policy_content_maintxt_span').text("경기도 과천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '광명시') {
				$('.policy_content_maintxt_span').text("경기도 광명시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '광주시') {
				$('.policy_content_maintxt_span').text("경기도 광주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '구리시') {
				$('.policy_content_maintxt_span').text("경기도 구리시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '군포시') {
				$('.policy_content_maintxt_span').text("경기도 군포시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '김포시') {
				$('.policy_content_maintxt_span').text("경기도 김포시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '남양주시') {
				$('.policy_content_maintxt_span').text("경기도 남양주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동두천시') {
				$('.policy_content_maintxt_span').text("경기도 동두천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '부천시') {
				$('.policy_content_maintxt_span').text("경기도 부천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '성남시') {
				$('.policy_content_maintxt_span').text("경기도 성남시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '수원시') {
				$('.policy_content_maintxt_span').text("경기도 수원시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '시흥시') {
				$('.policy_content_maintxt_span').text("경기도 시흥시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '안산시') {
				$('.policy_content_maintxt_span').text("경기도 안산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '안성시') {
				$('.policy_content_maintxt_span').text("경기도 안성시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '안양시') {
				$('.policy_content_maintxt_span').text("경기도 안양시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '양주시') {
				$('.policy_content_maintxt_span').text("경기도 양주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '여주시') {
				$('.policy_content_maintxt_span').text("경기도 여주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '오산시') {
				$('.policy_content_maintxt_span').text("경기도 오산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '용인시') {
				$('.policy_content_maintxt_span').text("경기도 용인시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '의왕시') {
				$('.policy_content_maintxt_span').text("경기도 의왕시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '의정부시') {
				$('.policy_content_maintxt_span').text("경기도 의정부시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '이천시') {
				$('.policy_content_maintxt_span').text("경기도 이천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '파주시') {
				$('.policy_content_maintxt_span').text("경기도 파주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '평택시') {
				$('.policy_content_maintxt_span').text("경기도 평택시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '포천시') {
				$('.policy_content_maintxt_span').text("경기도 포천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '하남시') {
				$('.policy_content_maintxt_span').text("경기도 하남시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '화성시') {
				$('.policy_content_maintxt_span').text("경기도 화성시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '가평군') {
				$('.policy_content_maintxt_span').text("경기도 가평군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '양평군') {
				$('.policy_content_maintxt_span').text("경기도 양평군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '연천군') {
				$('.policy_content_maintxt_span').text("경기도 연천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}	
		if($('#parent option:selected').val() == '인천시'){	
			if ($('#child option:selected').val() == '계양구') {
				$('.policy_content_maintxt_span').text("인천시 계양구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '남동구') {
				$('.policy_content_maintxt_span').text("인천시 남동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동구') {
				$('.policy_content_maintxt_span').text("인천시 동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '미추홀구') {
				$('.policy_content_maintxt_span').text("인천시 미추홀구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '부평구') {
				$('.policy_content_maintxt_span').text("인천시 부평구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서구') {
				$('.policy_content_maintxt_span').text("인천시 서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '수구') {
				$('.policy_content_maintxt_span').text("인천시 수구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '중구') {
				$('.policy_content_maintxt_span').text("인천시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '강화군') {
				$('.policy_content_maintxt_span').text("인천시 강화군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '옹진군') {
				$('.policy_content_maintxt_span').text("인천시 옹진군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '부산시'){
			if ($('#child option:selected').val() == '강서구') {
				$('.policy_content_maintxt_span').text("부산시 강서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '금정구') {
				$('.policy_content_maintxt_span').text("부산시 금정구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '남구') {
				$('.policy_content_maintxt_span').text("부산시 남구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동구') {
				$('.policy_content_maintxt_span').text("부산시 동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동래구') {
				$('.policy_content_maintxt_span').text("부산시 동래구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '부산진구') {
				$('.policy_content_maintxt_span').text("부산시 부산진구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '북구') {
				$('.policy_content_maintxt_span').text("부산시 북구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '사상구') {
				$('.policy_content_maintxt_span').text("부산시 사상구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '사하구') {
				$('.policy_content_maintxt_span').text("부산시 사하구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서구') {
				$('.policy_content_maintxt_span').text("부산시 서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '수영구') {
				$('.policy_content_maintxt_span').text("부산시 수영구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '연제구') {
				$('.policy_content_maintxt_span').text("부산시 연제구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영도구') {
				$('.policy_content_maintxt_span').text("부산시 영도구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '중구') {
				$('.policy_content_maintxt_span').text("부산시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '해운대구') {
				$('.policy_content_maintxt_span').text("부산시 해운대구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '기장군') {
				$('.policy_content_maintxt_span').text("부산시 기장군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '대구시'){
				if ($('#child option:selected').val() == '남구') {
					$('.policy_content_maintxt_span').text("대구시 남구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '달서구') {
					$('.policy_content_maintxt_span').text("대구시 달서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '동구') {
					$('.policy_content_maintxt_span').text("대구시 동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '북구') {
					$('.policy_content_maintxt_span').text("대구시 북구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '서구') {
					$('.policy_content_maintxt_span').text("대구시 서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '수성구') {
					$('.policy_content_maintxt_span').text("대구시 수성구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '중구') {
					$('.policy_content_maintxt_span').text("대구시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				} else if ($('#child option:selected').val() == '달성군') {
					$('.policy_content_maintxt_span').text("대구시 달성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
				}
		}
		if($('#parent option:selected').val() == '광주시'){
			if ($('#child option:selected').val() == '광산구') {
				$('.policy_content_maintxt_span').text("광주시 광산구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '남구') {
				$('.policy_content_maintxt_span').text("광주시 남구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동구') {
				$('.policy_content_maintxt_span').text("광주시 동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '북구') {
				$('.policy_content_maintxt_span').text("광주시 북구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서구') {
				$('.policy_content_maintxt_span').text("광주시 서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '대전시'){
			if ($('#child option:selected').val() == '대덕구') {
				$('.policy_content_maintxt_span').text("대전시 대덕구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동구') {
				$('.policy_content_maintxt_span').text("대전시 동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서구') {
				$('.policy_content_maintxt_span').text("대전시 서구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '유성구') {
				$('.policy_content_maintxt_span').text("대전시 유성구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '중구') {
				$('.policy_content_maintxt_span').text("대전시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '울산시'){
			if ($('#child option:selected').val() == '남구') {
				$('.policy_content_maintxt_span').text("울산시 남구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동구') {
				$('.policy_content_maintxt_span').text("울산시 동구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '북구') {
				$('.policy_content_maintxt_span').text("울산시 북구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '중구') {
				$('.policy_content_maintxt_span').text("울산시 중구 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '울주군') {
				$('.policy_content_maintxt_span').text("울산시 울주군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '세종시'){
			if ($('#child option:selected').val() == '조치원읍') {
				$('.policy_content_maintxt_span').text("세종시 조치원읍 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '금남면') {
				$('.policy_content_maintxt_span').text("세종시 금남면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '부강면') {
				$('.policy_content_maintxt_span').text("세종시 부강면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '소정면') {
				$('.policy_content_maintxt_span').text("세종시 소정면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '연기면') {
				$('.policy_content_maintxt_span').text("세종시 연기면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '연동면') {
				$('.policy_content_maintxt_span').text("세종시 연동면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '연서면') {
				$('.policy_content_maintxt_span').text("세종시 연서면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '장군면') {
				$('.policy_content_maintxt_span').text("세종시 장군면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '전동면') {
				$('.policy_content_maintxt_span').text("세종시 전동면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '전의면') {
				$('.policy_content_maintxt_span').text("세종시 전의면 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '고운동') {
				$('.policy_content_maintxt_span').text("세종시 고운동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '다정동') {
				$('.policy_content_maintxt_span').text("세종시 다정동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '대평동') {
				$('.policy_content_maintxt_span').text("세종시 대평동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '도담동') {
				$('.policy_content_maintxt_span').text("세종시 도담동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '보람동') {
				$('.policy_content_maintxt_span').text("세종시 보람동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '소담동') {
				$('.policy_content_maintxt_span').text("세종시 소담동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '새롬동') {
				$('.policy_content_maintxt_span').text("세종시 새롬동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '아름동') {
				$('.policy_content_maintxt_span').text("세종시 아름동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '종촌동') {
				$('.policy_content_maintxt_span').text("세종시 종촌동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '한솔동') {
				$('.policy_content_maintxt_span').text("세종시 한솔동 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '강원도'){
			if ($('#child option:selected').val() == '강릉시') {
				$('.policy_content_maintxt_span').text("강원도 강릉시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '동해시') {
				$('.policy_content_maintxt_span').text("강원도 동해시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '삼척시') {
				$('.policy_content_maintxt_span').text("강원도 삼척시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '속초시') {
				$('.policy_content_maintxt_span').text("강원도 속초시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '원주시') {
				$('.policy_content_maintxt_span').text("강원도 원주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '춘천시') {
				$('.policy_content_maintxt_span').text("강원도 춘천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '태백시') {
				$('.policy_content_maintxt_span').text("강원도 태백시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '고성군') {
				$('.policy_content_maintxt_span').text("강원도 고성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '양구군') {
				$('.policy_content_maintxt_span').text("강원도 양구군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '양양군') {
				$('.policy_content_maintxt_span').text("강원도 양양군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영월군') {
				$('.policy_content_maintxt_span').text("강원도 영월군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '인제군') {
				$('.policy_content_maintxt_span').text("강원도 인제군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '정선군') {
				$('.policy_content_maintxt_span').text("강원도 정선군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '철원군') {
				$('.policy_content_maintxt_span').text("강원도 철원군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '평창군') {
				$('.policy_content_maintxt_span').text("강원도 평창군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '홍천군') {
				$('.policy_content_maintxt_span').text("강원도 홍천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '화천군') {
				$('.policy_content_maintxt_span').text("강원도 화천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '횡성군') {
				$('.policy_content_maintxt_span').text("강원도 횡성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} 
		}
		if($('#parent option:selected').val() == '충청북도'){
			if ($('#child option:selected').val() == '제천시') {
				$('.policy_content_maintxt_span').text("충청북도 제천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '청주시') {
				$('.policy_content_maintxt_span').text("충청북도 청주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '충주시') {
				$('.policy_content_maintxt_span').text("충청북도 충주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '괴산군') {
				$('.policy_content_maintxt_span').text("충청북도 괴산군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '단양군') {
				$('.policy_content_maintxt_span').text("충청북도 단양군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '보은군') {
				$('.policy_content_maintxt_span').text("충청북도 보은군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영동군') {
				$('.policy_content_maintxt_span').text("충청북도 영동군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '옥천군') {
				$('.policy_content_maintxt_span').text("충청북도 옥천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '음성군') {
				$('.policy_content_maintxt_span').text("충청북도 음성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '증평군') {
				$('.policy_content_maintxt_span').text("충청북도 증평군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '진천군') {
				$('.policy_content_maintxt_span').text("충청북도 진천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '충청남도'){
			if ($('#child option:selected').val() == '계룡시') {
				$('.policy_content_maintxt_span').text("충청남도 계룡시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '공주시') {
				$('.policy_content_maintxt_span').text("충청남도 공주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '논산시') {
				$('.policy_content_maintxt_span').text("충청남도 논산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '당진시') {
				$('.policy_content_maintxt_span').text("충청남도 당진시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '보령시') {
				$('.policy_content_maintxt_span').text("충청남도 보령시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서산시') {
				$('.policy_content_maintxt_span').text("충청남도 서산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '아산시') {
				$('.policy_content_maintxt_span').text("충청남도 아산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '천안시') {
				$('.policy_content_maintxt_span').text("충청남도 천안시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '금산군') {
				$('.policy_content_maintxt_span').text("충청남도 금산군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '부여군') {
				$('.policy_content_maintxt_span').text("충청남도 부여군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '서천군') {
				$('.policy_content_maintxt_span').text("충청남도 서천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '예산군') {
				$('.policy_content_maintxt_span').text("충청남도 예산군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '청양군') {
				$('.policy_content_maintxt_span').text("충청남도 청양군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '태안군') {
				$('.policy_content_maintxt_span').text("충청남도 태안군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '홍성군') {
				$('.policy_content_maintxt_span').text("충청남도 홍성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '전라북도'){
			if ($('#child option:selected').val() == '군산시') {
				$('.policy_content_maintxt_span').text("전라북도 군산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '김제시') {
				$('.policy_content_maintxt_span').text("전라북도 김제시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '남원시') {
				$('.policy_content_maintxt_span').text("전라북도 남원시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '익산시') {
				$('.policy_content_maintxt_span').text("전라북도 익산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '전주시') {
				$('.policy_content_maintxt_span').text("전라북도 전주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '정읍시') {
				$('.policy_content_maintxt_span').text("전라북도 정읍시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '고창군') {
				$('.policy_content_maintxt_span').text("전라북도 고창군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '무주군') {
				$('.policy_content_maintxt_span').text("전라북도 무주군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '부안군') {
				$('.policy_content_maintxt_span').text("전라북도 부안군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '순창군') {
				$('.policy_content_maintxt_span').text("전라북도 순창군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '완주군') {
				$('.policy_content_maintxt_span').text("전라북도 완주군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '임실군') {
				$('.policy_content_maintxt_span').text("전라북도 임실군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '장수군') {
				$('.policy_content_maintxt_span').text("전라북도 장수군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '진안군') {
				$('.policy_content_maintxt_span').text("전라북도 진안군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '전라남도'){
			if ($('#child option:selected').val() == '광양시') {
				$('.policy_content_maintxt_span').text("전라남도 광양시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '나주시') {
				$('.policy_content_maintxt_span').text("전라남도 나주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '목포시') {
				$('.policy_content_maintxt_span').text("전라남도 목포시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '순천시') {
				$('.policy_content_maintxt_span').text("전라남도 순천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '여수시') {
				$('.policy_content_maintxt_span').text("전라남도 여수시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '강진군') {
				$('.policy_content_maintxt_span').text("전라남도 강진군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '고흥군') {
				$('.policy_content_maintxt_span').text("전라남도 고흥군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '곡성군') {
				$('.policy_content_maintxt_span').text("전라남도 곡성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '구례군') {
				$('.policy_content_maintxt_span').text("전라남도 구례군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '담양군') {
				$('.policy_content_maintxt_span').text("전라남도 담양군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '무안군') {
				$('.policy_content_maintxt_span').text("전라남도 무안군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '보성군') {
				$('.policy_content_maintxt_span').text("전라남도 보성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '신안군') {
				$('.policy_content_maintxt_span').text("전라남도 신안군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영광군') {
				$('.policy_content_maintxt_span').text("전라남도 영광군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영암군') {
				$('.policy_content_maintxt_span').text("전라남도 영암군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '완도군') {
				$('.policy_content_maintxt_span').text("전라남도 완도군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '장성군') {
				$('.policy_content_maintxt_span').text("전라남도 장성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '장흥군') {
				$('.policy_content_maintxt_span').text("전라남도 장흥군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '진도군') {
				$('.policy_content_maintxt_span').text("전라남도 진도군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '함평군') {
				$('.policy_content_maintxt_span').text("전라남도 함평군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '해남군') {
				$('.policy_content_maintxt_span').text("전라남도 해남군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '화순군') {
				$('.policy_content_maintxt_span').text("전라남도 화순군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '전라남도'){
			if ($('#child option:selected').val() == '경산시') {
				$('.policy_content_maintxt_span').text("전라남도 경산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '경주시') {
				$('.policy_content_maintxt_span').text("전라남도 경주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '구미시') {
				$('.policy_content_maintxt_span').text("전라남도 구미시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '김천시') {
				$('.policy_content_maintxt_span').text("전라남도 김천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '문경시') {
				$('.policy_content_maintxt_span').text("전라남도 문경시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '상주시') {
				$('.policy_content_maintxt_span').text("전라남도 상주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '안동시') {
				$('.policy_content_maintxt_span').text("전라남도 안동시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영주시') {
				$('.policy_content_maintxt_span').text("전라남도 영주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영천시') {
				$('.policy_content_maintxt_span').text("전라남도 영천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '포항시') {
				$('.policy_content_maintxt_span').text("전라남도 포항시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '고령군') {
				$('.policy_content_maintxt_span').text("전라남도 고령군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '군위군') {
				$('.policy_content_maintxt_span').text("전라남도 군위군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '봉화군') {
				$('.policy_content_maintxt_span').text("전라남도 봉화군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '성주군') {
				$('.policy_content_maintxt_span').text("전라남도 성주군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영덕군') {
				$('.policy_content_maintxt_span').text("전라남도 영덕군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '영양군') {
				$('.policy_content_maintxt_span').text("전라남도 영양군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '예천군') {
				$('.policy_content_maintxt_span').text("전라남도 예천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '울릉군') {
				$('.policy_content_maintxt_span').text("전라남도 울릉군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '울진군') {
				$('.policy_content_maintxt_span').text("전라남도 울진군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '의성군') {
				$('.policy_content_maintxt_span').text("전라남도 의성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '청도군') {
				$('.policy_content_maintxt_span').text("전라남도 청도군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '청송군') {
				$('.policy_content_maintxt_span').text("전라남도 청송군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '칠곡군') {
				$('.policy_content_maintxt_span').text("전라남도 칠곡군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		if($('#parent option:selected').val() == '경상남도'){
			if ($('#child option:selected').val() == '거제시') {
				$('.policy_content_maintxt_span').text("경상남도 거제시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '김해시') {
				$('.policy_content_maintxt_span').text("경상남도 김해시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '밀양시') {
				$('.policy_content_maintxt_span').text("경상남도 밀양시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '사천시') {
				$('.policy_content_maintxt_span').text("경상남도 사천시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '양산시') {
				$('.policy_content_maintxt_span').text("경상남도 양산시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '진주시') {
				$('.policy_content_maintxt_span').text("경상남도 진주시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '창원시') {
				$('.policy_content_maintxt_span').text("경상남도 창원시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '통영시') {
				$('.policy_content_maintxt_span').text("경상남도 통영시 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '거창군') {
				$('.policy_content_maintxt_span').text("경상남도 거창군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '고성군') {
				$('.policy_content_maintxt_span').text("경상남도 고성군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '남해군') {
				$('.policy_content_maintxt_span').text("경상남도 남해군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '산청군') {
				$('.policy_content_maintxt_span').text("경상남도 산청군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '의령군') {
				$('.policy_content_maintxt_span').text("경상남도 의령군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '창녕군') {
				$('.policy_content_maintxt_span').text("경상남도 창녕군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '하동군') {
				$('.policy_content_maintxt_span').text("경상남도 하동군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '함안군') {
				$('.policy_content_maintxt_span').text("경상남도 함안군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '함양군') {
				$('.policy_content_maintxt_span').text("경상남도 함양군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			} else if ($('#child option:selected').val() == '합천군') {
				$('.policy_content_maintxt_span').text("경상남도 합천군 입니당 ㅎㅎ 드디어 해냈다 지금 시간 새벽 6시 42분 드디어 잘 수가 있다 ㅠㅠ 잘자~~~");
			}
		}
		});
	});
</script>
<script type="text/javascript">
	window.onload = function() {
		LocatlonBinding();
		nameCilck();
	}
	function LocatlonBinding() {
		var childList;0
		var option;
		switch ($("#parent").val()) {
		case "서울시": chiledList
			= [
				"종로구", "중구", "용산구", "성동구", "광진구",
				"동대문구", "중랑구", "성북구", "강북구", "도봉구",
				"노원구", "은평구", "서대문구", "마포구", "양천구",
				"강서구", "구로구", "금천구", "영등포구", "동작구",
				"관악구", "서초구", "강남구", "송파구", "강동구"
				];
		break;
		case "경기도": chiledList
			= [
				"고양시", "과천시", "광명시", "광주시", "구리시",
				"군포시", "김포시", "남양주시", "동두천시", "부천시",
				"성남시", "수원시", "시흥시", "안산시", "안성시",
				"안양시", "양주시", "여주시", "오산시", "용인시", "의왕시", 
				"의정부시", "이천시", "파주시", "평택시", "포천시", "하남시",
				"화성시", "가평군", "양평군", "연천군"];
		break;

		case "인천시": chiledList
		= [	
			"계양구", "남동구", "동구", "미추홀구", "부평구",
			"서구", "수구", "중구", "강화군", "옹진군"
			];
		break;
		
		case "부산시": chiledList
		= [	
			"강서구", "금정구", "남구", "동구", "동래구",
			"부산진구", "북구", "사상구", "사하구", "서구",
			"수영구", "연제구", "영도구", "중구", "해운대구", "기장군"
			];
		break;
		
		case "대구시": chiledList
		= [	
			"남구", "달서구", "동구", "북구", "서구", "수성구", "중구", "달성군"
			];
		break;
		
		case "광주시": chiledList
		= [	
			"광산구", "남구", "동구", "북구", "서구"
			];
		break;
		
		case "대전시": chiledList
		= [	
			"대덕구", "동구", "서구", "유성구", "중구"
			];
		break;
		
		case "울산시": chiledList
		= [	
			"남구", "동구", "북구", "중구", "울주군"
			];
		break;
		
		case "세종시": chiledList
		= [	
			"조치원읍", "금남면", "부강면", "소정면", "연기면",
			"연동면", "연서면", "장군면", "전동면", "전의면", 
			"고운동", "다정동", "대평동", "도담동", "보람동",
			"소담동", "새롬동", "아름동", "종촌동", "한솔동"
			];
		break;
		
		case "강원도": chiledList
		= [	
			"강릉시", "동해시", "삼척시", "속초시", "원주시",
			"춘천시", "태백시", "고성군", "양구군", "양양군",
			"영월군", "인제군", "정선군", "철원군", "평창군",
			"홍천군", "화천군", "횡성군"
			];
		break;
		
		case "충청북도": chiledList
		= [	
			"제천시", "청주시", "충주시", "괴산군", "단양군",
			"보은군", "영동군", "옥천군", "음성군", "증평군", "진천군"
			];
		break;
		
		case "충청남도": chiledList
		= [	
			"계룡시", "공주시", "논산시", "당진시", "보령시",
			"서산시", "아산시", "천안시", "금산군", "부여군",
			"서천군", "예산군", "청양군", "태안군", "홍성군"
			];
		break;
		
		case "전라북도": chiledList
		= [	
			"군산시", "김제시", "남원시", "익산시", "전주시",
			"정읍시", "고창군", "무주군", "부안군", "순창군",
			"완주군", "임실군", "장수군", "진안군"
			];
		break;
		
		case "전라남도": chiledList
		= [	
			"광양시", "나주시", "목포시", "순천시", "여수시",
			"강진군", "고흥군", "곡성군", "구례군", "담양군",
			"무안군", "보성군", "신안군", "영광군", "영암군",
			"완도군", "장성군", "장흥군", "진도군", "함평군",
			"해남군", "화순군"
			];
		break;
		
		case "경상북도": chiledList
		= [	
			"경산시", "경주시", "구미시", "김천시", "문경시",
			"상주시", "안동시", "영주시", "영천시", "포항시",
			"고령군", "군위군", "봉화군", "성주군", "영덕군",
			"영양군", "예천군", "울릉군", "울진군", "의성군",
			"청도군", "청송군", "칠곡군"
			];
		break;
		
		case "경상남도": chiledList
		= [	
			"거제시", "김해시", "밀양시", "사천시", "양산시",
			"진주시", "창원시", "통영시", "거창군", "고성군",
			"남해군", "산청군", "의령군", "창녕군", "하동군",
			"함안군", "함양군", "합천군"
			];
		break;
	}
		
		$("#child").empty();
		
		for(var i = 0; i < chiledList.length; i++) {
			option = "<option value="+chiledList[i]+">" + chiledList[i] + "</option>"
			$("#child").append(option);
		}
	}


function nameCilck() {
	var name = $("#parent option:checked").text();
	var name2 = $("#child option:checked").text();
	$("#policy_content_title_name").empty();
	document.getElementById("policy_content_title_name").innerHTML = name + " " + name2 + "&nbsp;정책 정보";
	
}
</script>
<body>

	<%@ include file="../common/_header.jsp"%>
<!-- 	<form action="info_policy.woo"> -->
		<main class="policy_main">
			<div class="policy_box ma">
				<div class="policy_content_title">
					<h2 id="policy_content_title_name"></h2>
					<span>동/구별 정책정보가 상이 할수 있습니다.자세한 문의는 각 동/구 청으로 확인 바랍니다.</span>
				</div>
				<div class="policy_content_search">
					<select class="selectpicker le" data-size="5" id="parent" onchange="LocatlonBinding();">
						<option value="서울시">서울시</option>
						<option value="경기도">경기도</option>
						<option value="인천시">인천시</option>
						<option value="부산시">부산시</option>
						<option value="대구시">대구시</option>
						<option value="광주시">광주시</option>
						<option value="대전시">대전시</option>
						<option value="울산시">울산시</option>
						<option value="세종시">세종시</option>
						<option value="강원도">강원도</option>
						<option value="충청북도">충청북도</option>
						<option value="충청남도">충청남도</option>
						<option value="전라북도">전라북도</option>
						<option value="전라남도">전라남도</option>
						<option value="경상북도">경상북도</option>
						<option value="경상남도">경상남도</option>
					</select>
					<script type="text/javascript">
					function LocatlonBindingClick() {
						var childList2;
						var option2;
						switch ($("#child").val()) {
						case "동대문구": chiledList2 = "서울시 동대문구 입니다.";
						break;
						}
						$("#policy_content_maintxt_span").empty();
						option2 = "<span>" + chiledList2 + "</span>"
						$("#policy_content_maintxt_span").append(option2);
							
					}
					</script>
					<select class="selectpicker" data-size="5" id="child"></select>
						<a id="showbtn" onclick="nameCilck();"><button>검색</button></a>
				</div>
				<div class="policy_content_maintxt">
				<svg xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg" height="600mm" id="svg4658" version="1.1" viewBox="0 0 2125.9843 2125.9842" width="600mm"><defs id="defs4660"/><g id="layer1" transform="translate(0,1073.6222)"><path d="m 188.54149,-400.16795 1754.72731,0 c 77.192,0 139.3358,68.39363 139.3358,153.34892 L 1064.5685,493.9172 49.205624,-246.81903 c 0,-84.95529 62.143866,-153.34892 139.335866,-153.34892 z" id="rect4148" style="opacity:1;fill:#989691;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 1064.9568,-1061.0169 c -15.3059,-0.09 -26.9838,9.0736 -39.8207,17.4098 -275.92161,179.18099 -752.20895,541.15627 -917.24185,667.60305 -18.108277,13.87427 -27.825703,27.88269 -33.040943,38.56894 -15.922077,24.93054 -25.257345,55.35964 -25.257345,88.27951 l 2033.397738,0 c 0,-36.93723 -11.7524,-70.74195 -31.3766,-97.1575 -7.4464,-10.69879 -17.2818,-21.93544 -30.1038,-31.66418 -168.4527,-127.81576 -643.0577,-485.30208 -916.9651,-665.13982 -12.8079,-8.4093 -24.2698,-17.8094 -39.5914,-17.8998 z" id="path4153" style="opacity:1;fill:#ebeae3;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><rect height="1079.6366" id="rect4175" rx="0" ry="0" style="opacity:1;fill:#f6f6f6;fill-opacity:1;stroke:none;stroke-width:1.00000012;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" transform="matrix(0.99999694,-0.00247446,0.00185735,0.99999828,0,0)" width="1403.0609" x="357.0015" y="-484.32114"/><rect height="32.050957" id="rect4232" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-210.28609"/><rect height="32.050957" id="rect4248" rx="4.3800354" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="665.91992" x="439.84296" y="285.51721"/><rect height="32.050957" id="rect4246" rx="5.8836765" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="894.52655" x="439.84296" y="117.49538"/><rect height="32.050957" id="rect4244" rx="7.8821678" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="1198.3678" x="439.84296" y="-50.527126"/><rect height="32.050957" id="rect4259" rx="2.5194571" ry="16.025478" style="display:inline;opacity:1;fill:#6d6b66;fill-opacity:1;stroke:none;stroke-width:10;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1" width="383.04642" x="439.84296" y="-356.27264"/><path d="m 2082.2735,-247.92348 z m 0,0 0,1146.04381 c 0,78.61526 -62.1427,141.90707 -139.3347,141.90707 l -1754.72575,0 878.69945,-547.21469 z" id="path4173" style="opacity:1;fill:#eeede9;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/><path d="m 47.978709,-251.81896 z m 0,0 0,1146.04395 c 0,78.61512 62.142631,141.90691 139.334641,141.90691 l 1754.72565,0 -878.6996,-547.21466 z" id="rect4162" style="opacity:1;fill:#e9e7e0;fill-opacity:1;stroke:none;stroke-width:1;stroke-miterlimit:4;stroke-dasharray:none;stroke-opacity:1"/></g></svg>
					<span class="policy_content_maintxt_span">저희 울타리 사이트에 자랑 도시별로 정보 정책을 볼 수 있습니다 </span>

				</div>
<!-- 				<div class="policy_content_download"> -->
<!-- 					<span> 파일 다운로드 </span> -->
<!-- 					<button>다운로드</button> -->
<!-- 				</div> -->
			</div>
		</main>
<!-- 	</form> -->
	<%-- 	<%@ include file="./common/_footer.jsp"%> --%>
	<%@ include file="../common/_script.jsp"%>
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.selectpicker').selectpicker({
				style : 'btn-info',
				size : 4
			});
		});
	</script>
</body>
</html>