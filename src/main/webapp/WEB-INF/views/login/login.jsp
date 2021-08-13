<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	window.Kakao.init("f7e4df77f054e6577e939c48aa62a9a8");
	
	function kakaoLogin() {
		window.Kakao.Auth.login({
			scope:'profile_nickname, account_email, gender, birthday',
			success: function(authObj){
				console.log(authObj);
				window.Kakao.API.request({
				 url:'/v2/user/me',
				 success: res => {
					 const kakao_account = res.kakao_account;
					 console.log(kakao_account);
				 }
				});
			}
		});
	}
	</script>
	
	

<body class="modal_body">

<c:if test="${mbLoginName != null }">
		<script>
			alert("이미 로그인 중입니다.");
			location.href = "main.woo";
		</script>
</c:if>


	<%@ include file="../index.jsp"%>

	<!-- 	<h2>모달창만들기</h2> -->
	<a class="modal-open-btn" id="modal-open-btn">Login</a>
	<!-- 	<div id="modal-overlay"> -->
	<div class="modal-wrapper">

		<div class="modal_step">


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
							<form action="member_login.woo" method="post">
								<div class="login_box_input">
									<div class="input_id_box">
										<label>아이디</label> <input type="text" name="id"
											placeholder="아이디">
									</div>
									<div class="input_pw_box">
										<label>비밀번호</label> <input type="password" name="pw"
											placeholder="비밀번호">
									</div>
								</div>

								<input type="submit" class="login_btn" value="로그인">
							</form>
							<div class="login_box_small_menu">
								<span class="menu_join"> <a class="join_link"
									href="${pageContext.request.contextPath}/sign_up.woo">회원가입</a></span>
								<span class="menu_find"> <a class="find_link" href="${pageContext.request.contextPath}/findid.woo">아이디 /
										비밀번호 찾기</a>
								</span>
							</div>
						</fieldset>
						<section class="another_login">
							<h2 class="another_login_line">
								────────<a>&nbsp;또는&nbsp;</a>────────
							</h2>
							<ul class="another_login_list">
								<a class="login_kakao" href="javascript:kakaoLogin();"> <img
									src="https://developers.kakao.com/tool/resource/static/img/button/login/full/ko/kakao_login_medium_wide.png"
									class="naver_img">
								</a>

							</ul>
						</section>
					</div>
				</div>

			</div>
		</div>

</div>
		<script>
		
//          const modalOpenBtn = document.getElementById("modal-open-btn");
        const modalCloseBtn = document.getElementById("modal-close-btn");
        const modalWrapper = document.querySelector(".modal-wrapper");

         console.log(modalWrapper.style);

//          modalOpenBtn.addEventListener("click", () => {
            modalWrapper.style.display = "flex";
//          });

        modalCloseBtn.addEventListener("click", () => {
            modalWrapper.style.display = "none";
        });
        

        
    </script>
</body>
</html>