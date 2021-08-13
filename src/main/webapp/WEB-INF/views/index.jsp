<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@ include file="./common/_link.jsp"%>
<body>
	<%@ include file="./common/_header.jsp"%>
	<!-- ======= Hero Section ======= -->
		<form action="main.woo">
		<section id="hero">
			<div class="hero-container" data-aos="fade-in">
				<h1>
					저는 <span>"한부모"</span> 입니다.test
				</h1>
				<h2>가족의 형태는 다양할 뿐, 우리도 가족 입니다.</h2>
				<div class="imgdivbox">
					<img src="${path}/resources/img/main_img.png" alt="Hero Imgs" data-aos="zoom-out" data-aos-delay="100">
				</div>
				<span class="dou">please scroll down</span>
			</div>
		</section>
		<!-- 	End Hero Section -->
		
		<main id="main">
			<!-- ======= info Section ======= -->
			<section id="info" class="padd-section text-center">

				<div class="container" data-aos="fade-up">
					<div class="section-title text-center">
						<h2>울타리에서는,</h2>
						<p class="separator">저희는 이런것들을 진행 하고 있어요. 어떤 도움이 필요 하신가요?!</p>
					</div>

					<div class="row" data-aos="fade-up" data-aos-delay="100">

						<div class="col-md-6 col-lg-3">
							<div class="feature-block">
								<img src="${path}/resources/img/main/MID1.png" alt="img">
								<h4>육아 정보를 한눈에 볼수 있어요!</h4>
								<p>
									맞이하는 모든 상황에 대한 대처를<br>한눈에 정리해봤어요!
								</p>
								<a href="${pageContext.request.contextPath}/info_childcare.woo">>>육아정보 바로 가기</a>
							</div>
						</div>

						<div class="col-md-6 col-lg-3">
							<div class="feature-block">
								<img src="${path}/resources/img/main/MID4.png" alt="img">
								<h4>시설의 위치를 알려줘요!</h4>
								<p>
									모든 시설의 정보를<br>알고 싶을때 사용하세요!
								</p>
								<a href="${pageContext.request.contextPath}/info_center.woo">>>시설 정보 바로 가기</a>
							</div>
						</div>

						<div class="col-md-6 col-lg-3">
							<div class="feature-block">
								<img src="${path}/resources/img/main/MID3.png" alt="img">
								<h4>누군가는 도움이 필요 해요!</h4>
								<p>
									작은 마음 하나 둘 모여<br>세상에게 온기를 불어 넣어 주세요!
								</p>
								<a href="${pageContext.request.contextPath}/support.woo">>>후원 하러 바로 가기</a>
							</div>
						</div>

						<div class="col-md-6 col-lg-3">
							<div class="feature-block">
								<img src="${path}/resources/img/main/MID2.png" alt="img">
								<h4>소식에서 모든걸 공유 해요!</h4>
								<p>
									당신의 깨알 정보를 함께 하세요!<br>육아부터 나눔까지!
								</p>
								<a href="${pageContext.request.contextPath}/content.woo">>>커뮤니티 바로 가기</a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- 	End info Section -->

			<!--     ======= Get Started Section ======= -->
			<section id="get-started" class="padd-section text-center">

				<div class="container" data-aos="fade-up">
					<div class="section-title text-center">
						<h2>후원금, 이렇게 쓰입니다!</h2>
						<p class="separator">선택한 후원처에 후원을 진행할 수 있도록 도와드려요!</p>
					</div>
				</div>

				<div class="container">
					<div class="row">

						<div class="col-md-6 col-lg-4" data-aos="zoom-in"
							data-aos-delay="100">
							<div class="feature-block sin">
								<img src="${path}/resources/img/main/main1.png" alt="img">
								<h4>미혼모 시설 지원</h4>
								<p>
									경제적으로 취약한 미혼모,부가 <br>아이와 함께 행복한 가정을 만들어 갈수 있도록 <br>생활비,
									치료비를 위해 기부금을 전달합니다.
								</p>
							</div>
						</div>

						<div class="col-md-6 col-lg-4" data-aos="zoom-in"
							data-aos-delay="200">
							<div class="feature-block fam">
								<img src="${path}/resources/img/main/main3.png" alt="img">
								<h4>한부모 가정</h4>
								<p>
									돌봄이 필요한 아동의 삶과 가정, 지역 사회의 <br>건강한 변화를 통해 행복한 대한민국이 되기 위해 <br>기부금을
									전달 합니다.
								</p>
							</div>
						</div>

						<div class="col-md-6 col-lg-4" data-aos="zoom-in"
							data-aos-delay="300">
							<div class="feature-block ri">
								<img src="${path}/resources/img/main/main4.png" alt="img">
								<h4>법인 재단</h4>
								<p>
									권리를 보호하며 양육비를 확보, 자녀 양육<br> 부담경감 및 생활안정 지원을 위한 법률구조를<br>
									진행하여 기부금은을 전달 합니다.
								</p>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- 	End  Get Started Section -->

			<!-- 	======= Swiper Section ======= -->
			<section id="swiper" class="padd-section text-center">
				<div class="container" data-aos="fade-up">
					<div class="section-title text-center">
						<h2>후원기관, 저희와 함께 합니다!</h2>
						<p class="separator">여러분들의 후원금이 저희를 통해 이곳 후원기관에 전달됩니다!</p>
					</div>
				</div>
				<div class="container">
					<div class="swiper-container mySwiper " data-aos="fade-up"
						data-aos-delay="100">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner6.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner2.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="https://www.gfound.org/img/main/logo.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="https://intree.or.kr/theme/basic/img/logo1.png" />
							</div>
							<div class="swiper-slide">
								<img class="sm" src="https://modo-phinf.pstatic.net/20210316_294/1615897031791pRSfl_JPEG/mosa8XtRta.jpeg?type=w556" />
							</div>
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner5.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner8.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="https://kumsn.org/data/editor/2006/thumb-6bba36cd10ee0c41c28779bcaa42cc2a_1593136756_1761_180x125.png" />
							</div>
							<div class="swiper-slide">
								<img src="https://www.gfound.org/img/sub/sub2_1_fb4.png" />
							</div>
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner11.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner7.jpg" />
							</div>
							<div class="swiper-slide">
								<img src="http://www.kumfa.kr/theme/prunit/img/f_banner1.jpg" />
							</div>
						</div>
					</div>
				</div>
			</section>
			<section id="backCloud" class="padd-section text-cente"></section>
		</main>
		<!-- main End -->

	</form>


	<%@ include file="./common/_footer.jsp"%>
	<%@ include file="./common/_script.jsp"%>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script>
		var swiper = new Swiper(".mySwiper", {
			slidesPerView : 3,
			slidesPerColumn : 2,
			spaceBetween : 0,
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
		});
	</script>

</body>
</html>