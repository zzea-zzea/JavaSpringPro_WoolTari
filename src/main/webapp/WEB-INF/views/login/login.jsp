<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>

<link rel="stylesheet" href="../css/login.css">
<link rel="stylesheet" href="../css/modal.css">
<body class="modal_body">

<!-- 	<h2>모달창만들기</h2> -->
 	<button class="modal-open-btn" id="modal-open-btn">Login</button> 
<!-- 	<div id="modal-overlay"> -->
		<div class="modal-wrapper">
			<div class="modal-box">
				<button id="modal-close-btn" class="modal-close-btn">
					<svg xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
						id="Capa_1" x="0px" y="0px" viewBox="0 0 52.001 52.001"
						style="enable-background: new 0 0 52.001 52.001;"
						xml:space="preserve">
                        <g>
                            <g>
                                <path style="fill:#030104;"
							d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486    c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757    c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485    c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0    C50.086,47.9,50.086,44.101,47.743,41.758z" />
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                    </svg>
				</button>
				<div class="login_box">
					<div class="login_box_menu">

						<fieldset>
							<header>
								<div class="login_logo_wrap">
									<h1>
										<a class="header_txt"><span class="txt_dig">W</span>ooltari</a>
									</h1>
								</div>
							</header>
							<div class="login_box_input">
								<div class="input_id_box">
									<label>아이디</label> <input type="email" placeholder="아이디">
								</div>
								<div class="input_pw_box">
									<label>비밀번호</label> <input type="password" placeholder="비밀번호">
								</div>
							</div>
							<button type="submit" class="login_btn" disabled>LOGIN</button>
							<div class="login_box_small_menu">
								<span class="menu_join"> <a class="join_link">회원가입</a></span>
								<span class="menu_find"> <a class="find_link">아이디 / 비밀번호 찾기</a>
								</span>
							</div>
						</fieldset>
						<section class="another_login">
							<h2 class="another_login_line">
								────<a>&nbsp;또는&nbsp;</a>────
							</h2>
							<ul class="another_login_list">
								<button type="button" class="login_naver">
									<img src="img/%EB%84%A4%EC%9D%B4%EB%B2%84.PNG"
										class="naver_img">
								</button>
								<button type="button" class="login_kakao">
									<img src="img/%EC%B9%B4%EC%B9%B4%EC%98%A4.PNG"
										class="kakao_img">
								</button>
								<button type="button" class="login_google">
									<img src="img/%EA%B5%AC%EA%B8%80.PNG" class="google_img">
								</button>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
</div> 


	<script>
         const modalOpenBtn = document.getElementById("modal-open-btn");
        const modalCloseBtn = document.getElementById("modal-close-btn");
        const modalWrapper = document.querySelector(".modal-wrapper");

         console.log(modalWrapper.style);

         modalOpenBtn.addEventListener("click", () => {
            modalWrapper.style.display = "flex";
         });

        modalCloseBtn.addEventListener("click", () => {
            modalWrapper.style.display = "none";
        });
    </script>
</body>
</html>