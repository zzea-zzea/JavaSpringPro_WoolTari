<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<!-- <link href="../css/support.css" rel="stylesheet"> -->
<style>
hr {
	margin: auto;
}

.one_box {
	width: 1200px;
	margin: 150px auto;
}

.support_view_first_box {
	width: 1000px;
	height: 650px;
	margin: 150px auto;
}

.support_view_title {
	padding: 15px 0;
	text-align: center;
}

.support_view_title h3 {
	font-size: 35px;
}

.support_view_title span {
	color: pink;
}

.support_view_sponsor_title {
	width: 1000px;
	height: 50px;
	margin: 30px;
}

.support_view_sponsor_title b {
	font-size: 25px;
	border-bottom: 4px solid pink;
}

.main_image_box {
	width: 1000px;
	height: 450px;
}

.main_image_box .support_image {
	
}

.main_image_box .support_image input {
	width: 1000px;
	height: 400px;
	position: relative;
}

.sponsorship_description_box {
	width: 1000px;
	height: 300px;
	margin: 30px;
}

.sponsorship_description_box_image {
	margin: 15px auto;
	width: 400px;
	height: 400px;
	display: inline;
}

.sponsorship_description_box input {
	width: 340px;
	height: 230px;
}

.main_image_box .support_image p {
	position: absolute;
	top: 250px;
	left: 500px;
	font-size: 30px;
	color: black;
	font-weight: 900;
}

.support_view_sponsor_box {
	width: 850px;
	height: 300px;
	margin: 0px auto;
}

.support_view_sponsor_image {
	display: inline-block;
	width: 280px;
}

.support_view_sponsor_image input {
	width: 250px;
	height: 250px;
}

.support_view_sponsor_select_combo {
	display: inline-block;
}

.support_view_sponsor_select_combo .select_combo {
	padding: 10px 10px;
	border-radius: 30px;
}

.support_view_sponsor_Information {
	height: 300px;
	margin: 20px 0px;
	width: 1000px;
	border: 1px solid;
}

.support_view_sponsor_Information Information_box {
	margin: 10px 10px;
	position: absolute;
/* 	display: none; */
}

.support_view_sponsor_Information .Information_box p {
	font-size: 15px;
	font-weight: bold;
	line-height: 40px;
/* 	display: none; */
}
.support_view_sponsor_Information .Information_box .information_0 {

}
.support_view_sponsor_Information .Information_box .information_1 {
	display: none;
}
.support_view_sponsor_Information .Information_box .information_2 {
	display: none;
}
.support_view_sponsor_Information .Information_box .information_3 {
	display: none;
}
.sponsorship_description_box_write {
	display: inline-block;
	width: 600px;
	height: 400px;
}

.sponsorship_description_box_title {
	list-style: none;
	font-size: 20px;
}

.sponsorship_description_box_sub {
	width: 1000px;
	height: 450px;
}

.sponsorship_description_box_sub_title {
	height: 50px;
	text-align: center;
}

.sponsorship_description_box_sub_title h4 {
	font-size: 25px;
}

.sponsorship_description_box_sub_image_box {
	width: 1000px;
	height: 400px;
}

.sponsorship_description_box_sub_image_one {
	display: inline-block;
	margin: 35px;
	height: 300px;
}

.sponsorship_description_box_sub_image_one input {
	width: 280px;
	height: 250px;
}

.sponsorship_description_box_sub_image_one_title {
	list-style: none;
	font-size: 20px;
	line-height: 40px;
}

.sponsorship_description_box_sub_image_two {
	display: inline-block;
	
	height: 300px;
}

.sponsorship_description_box_sub_image_two input {
	width: 280px;
	height: 250px;
}

.sponsorship_description_box_sub_image_two_title {
	list-style: none;
	font-size: 20px;
	line-height: 40px;
}

.sponsorship_description_box_sub_image_thr {
	display: inline-block;
	margin: 35px;
	height: 300px;
}

.sponsorship_description_box_sub_image_thr input {
	width: 280px;
	height: 250px;
}

.sponsorship_description_box_sub_image_thr_title {
	list-style: none;
	font-size: 20px;
	line-height: 40px;
}

.support_next_page {
	float: right;
	padding-right: 10px;
}

.support_next_page input {
	border-radius: 50px;
	border: 2px solid #f2b09b;
	background: #fff;
	line-height: 32px;
	font-size: 13px;
	color: #b96c6c;
	font-weight: bold;
}
.sponsorship_description_box_sub_image_one li {
/* 	text-align: center; */
}
.sponsorship_description_box_sub_image_two li {
/* 	text-align: center; */
}
.sponsorship_description_box_sub_image_thr li {
	text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
function handleOnChange(e) {
	  // 선택된 데이터 가져오기
	  const value = e.value;
	  
	  // 데이터 출력
	  document.getElementById('information_0').innerText
	    = value;
	}
</script>

<body>
	<%@ include file="../common/_header.jsp"%>
	<form action="support.woo">
	<div class="one_box">
		<div class="support_view_first_box">
			<div class="support_view_title">
				<h3>
					<span>후</span>원하기
				</h3>
			</div>
			<hr>
			<div class="main_image_box">
				<div class="support_image">
					<input type="image" src="../img/main/main.image.jpg">
					<p>
						후원하시면 한부모 가정에게<br>행복을 전달할 수 있습니다.
					</p>
				</div>
			</div>
			<div class="sponsorship_description_box">
				<div class="sponsorship_description_box_image">
					<input type="image" src="../img/main/main10.png">
					<div class="sponsorship_description_box_write">
						<ul>
							<li class="sponsorship_description_box_title"><strong>모든
									어린이는 보호받을 권리가 있습니다.</strong></li>
							<hr>
							<li>저소득가정 아이들이 건강하고 행복하게 자랄 수 있도록 생존, 보호, 발달, 참여 전반에 걸쳐 경제적,
								정서적 지원을 합니다.</li>
							<li>아동의 권리를 침해하는 사회적 문제에 대응하여, 아동의 권리가 보호·존중·실현 되도록 인식 및 환경을
								개선하고, 정책의 변화를 촉구하기 위해 목소리를 냅니다.</li>
							<li>한부모 가정과 아이들에게 위험에서 보호하고 건강하게자 자랄 수 있도록 돕습니다.</li>
						</ul>
					</div>
				</div>
			</div>

			<div class="sponsorship_description_box_sub">
				<div class="sponsorship_description_box_sub_title">
					<h4>여러분의 후원금으로 행복한 세상을 만듭니다.</h4>
				</div>
				<hr>
				<div class="sponsorship_description_box_sub_image_box">
					<div class="sponsorship_description_box_sub_image_one">
						<input type="image" src="../img/main/main2.png">
						<ul>
							<li class="sponsorship_description_box_sub_image_one_title">
								<strong>차별 없는 구호</strong>
<!-- 							</li> -->
<!-- 							<li>성별에 관계없이 어린이를 위한 구호<br>사업과 어린이 권리사업을 펼치고 있습니다. -->
<!-- 							</li> -->
						</ul>
					</div>
					<div class="sponsorship_description_box_sub_image_two">
						<input type="image" src="../img/main/main3.png">
						<ul>
							<li class="sponsorship_description_box_sub_image_two_title">
								<strong>엄격한 후원금 관리</strong>
							</li>
<!-- 							<li>엄격한 심사와 외부회계법인의<br>회계감사로 후원금을 투명하고<br>정확하게 -->
<!-- 								관리합니다. -->
<!-- 							</li> -->
						</ul>
					</div>
					<div class="sponsorship_description_box_sub_image_thr">
						<input type="image" src="../img/main/main4.png">
						<ul>
							<li class="sponsorship_description_box_sub_image_thr_title">
								<strong>국내복지사업</strong>
							</li>
<!-- 							<li>편견과 차별속에서 경제적, 의료적<br>문제로 고통받고 있는 소외된 <br>가정 -->
<!-- 								에게 든든한 버팀목이<br> 되어줄 수 있는<br> 복지 서비스 지원합니다. -->
<!-- 							</li> -->
						</ul>
					</div>
				</div>
			</div>

			<form action="nextsupport.jsp">
				<div class="support_view_sponsor_title">
					<b>후원처 선택하기</b>
				</div>
				<div class="support_view_sponsor_box">
					<div class="support_view_sponsor_image">
						<input type="image" src="../img/main/main2.png">
					</div>
				</div>
					<div class="support_view_sponsor_select_combo">
						<select class="select_combo" id="select_combo" onchange="handleOnChange(this)">
							<option value="재단법인은 사람이 본체인 사단법인과는 다르게 재산이 법인의 본체이다. 돈에 인격을 부여하는 
								자본주의의 극한 따라서 사원 및 사원총회는 없으며 이사와 감사만 있다. 영리 및 비영리가 
								모두 있는 사단법인[1]과는 다르게 재단법인은 모두 비영리이다. 수익을 배당받을 사원(직원이 아니라
								주식회사의 주주같은 개념이다.)이 없기 때문이다. 물론 재단법인도 수익사업을 할 수 있는데, 법인세 부과 대상
								사업과 비과세 대상 사업이 있다. 연구, 개발, 교육, 사회복지사업의 경우는 비과세 사업으로 정관에 따라 수익사업을
								해야 하며, 정관과 다르면 개정하여 주무관청의 승인을 얻은 후 진행해야 하는데 그렇지 않으면 설립허가가 취소된다."  id="op1">법인재단</option>
							<option value="경제적으로 취약한 미혼모·부가 아이와 함께 행복한 가정을
								만들어 갈 수 있도록 생활비, 치료비 등을 지원합니다.홀로 출산을 준비하는 미혼모 가정에 생필품, 화장품, 아기용품,
								손편지 등을 키트로 구성하여 지원합니다.아이의 양육과 경제적인 부담을 혼자 감당하고 있는 미혼모 가정에
								의류, 전자제품, 생필품 등을 지원합니다.미혼모·부가 경제적, 정서적으로 안정을 찾고 독립할 수 있도록
								자격증 교육 등 자립교육을 지원합니다." id="op2">미혼모 시설</option>
							<option value="저소득층 아동·청소년에게 복지, 교육, 건강 3대 서비스를 맞춤형으로 제공합니다. 또한 아동·청소년-가족-지역사회까지 함께합니다.
								 위스타트는 국내 최초로 통합사례관리 모델을 개발하였으며, 이 모델은 보건복지부의 ‘드림스타트’ 사업으로 발전했습니다." id="op3">아동기관 센터</option>
							<option value="갈수록 늘어나는 이혼율, 사망률, 미혼모 등으로 인해 우리는 주위에서 한부모 가정을 자주 접할 수 있습니다.
								 그중 취약계층 한부모 가정의 아이들은 정서적, 신체적으로 정상적인 보살핌을 받기 어려운 상황입니다.
								라이프오브더칠드런은 한부모 가정이 마주한 문제를 스스로 해결할 수 있도록 지지해주고 이들의 부족한 부분을 채워 건강한 삶을 살도록 돕습니다." id="op4">한부모 가정</option>
						</select>
					</div>
					<div class="support_view_sponsor_Information">
						<div class="Information_box">
							<p id="information_0">재단법인은 사람이 본체인 사단법인과는 다르게 재산이 법인의 본체이다. 돈에 인격을 부여하는 
								자본주의의 극한 따라서 사원 및 사원총회는 없으며 이사와 감사만 있다. 영리 및 비영리가 
								모두 있는 사단법인[1]과는 다르게 재단법인은 모두 비영리이다. 수익을 배당받을 사원(직원이 아니라
								주식회사의 주주같은 개념이다.)이 없기 때문이다. 물론 재단법인도 수익사업을 할 수 있는데, 법인세 부과 대상
								사업과 비과세 대상 사업이 있다. 연구, 개발, 교육, 사회복지사업의 경우는 비과세 사업으로 정관에 따라 수익사업을
								해야 하며, 정관과 다르면 개정하여 주무관청의 승인을 얻은 후 진행해야 하는데 그렇지 않으면 설립허가가 취소된다.</p>
						</div>
					</div>

				<div class="support_next_page">
					<input type="submit" value="다음단계"> <a href="content.jsp"><input
						type="button" value="취소하기" onclick="confirm('돌아가시겠습니끼?')"></a>
				</div>
			</form>
		</div>
	</div>
</form>
</body>
</html>