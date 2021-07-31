<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>

<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<script>
	$(document).ready(
			function() {
				/*  modal_step:eq(0) 로그인
					modal_step:eq(1) 아이디
					modal_step:eq(2) 비밀번호
					modal_step:eq(3) 비번변경*/
				 /*  . 클래스 # 아이디  */
				$(".find_link").click(function() {
					$('.modal_step').hide();
					$('.modal_step:eq(1)').show();
				});
				$(".menu_choice_box_pw").click(function() {
					$('.modal_step').hide();
					$('.modal_step:eq(2)').show();
				});
				$(".menu_choice_box_id").click(function() {
					$('.modal_step').hide();
					$('.modal_step:eq(1)').show();
				});
				$(".modal-open-btn").click(function() {
					$('.modal_step').hide();
					$('.modal_step:eq(0)').show();
				});
				$(".find_pw_btn").click(function() {
					$('.modal_step').hide();
					$('.modal_step:eq(3)').show();
				});
				$(".modal-open-btn").trigger("click");
				
				});
</script>
<script>

	function chkPW() {
        var reg = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,}$/;

        var pw = $("#password").val();

        if (false === reg.test(pw)) {
            
            document.getElementById("pw_msg").innerHTML = "비밀번호 형식에 맞지않습니다";
        } else {
            document.getElementById("pw_msg").innerHTML = 
                "<font color=blue>비밀번호 사용 가능</font>";
            
            
        }

    }


</script>

<body class="modal_body">
	<%@ include file="../index.jsp"%>
	<form action="login.woo">
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
									<span class="menu_join"> <a class="join_link"  href="${pageContext.request.contextPath}/sign_up.woo">회원가입</a></span> <span
										class="menu_find"> <a class="find_link">아이디 / 비밀번호
											찾기</a>
									</span>
								</div>
							</fieldset>
							<section class="another_login">
								<h2 class="another_login_line">
									────────<a>&nbsp;또는&nbsp;</a>────────
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
			<div class="modal_step">

				<div class="modal-box find">


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


					<div class="title_find_menu">
						<h3 class="title_find_menu_id">아이디 찾기</h3>
					</div>
					<div class="menu_choice_box">
						<ul class="menu_choice_box_op">
							<li class="menu_choice_box_id"
								style="background: rgba(185, 108, 108, 0.5);"><a>아이디 찾기</a></li>
							<li class="menu_choice_box_pw"><a>비밀번호 찾기</a></li>
						</ul>
					</div>

					<div class="menu_id_box" id="input_box">
						<div class="menu_id_box_content">
							<select class="content_choice_box" id="selectBox"
								onclick="Change()">
								<option value="1">개인</option>
								<option value="2">사업자</option>
							</select> <br> <input class="txt_name" name="in_text"
								placeholder="이름"> <br>
							<div id="div1" style="display: none" class="menu_id_hide_box">
								<input class="txt_business_num" placeholder="사업자번호"
									name="in_text"
									onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> <br>
								<div class="txt_hide">
									<span class="hide_small">'-'을 제외한 번호만 입력해주세요</span>
								</div>
							</div>
							<input class="txt_email" placeholder="이메일" name="in_text_email">
							<button type="button" class="email_btn"
								onclick="alert('인증메일을 보냈습니다'); id_show();">확인</button>
							<br>

							<div id="user_email_1" style="display: none" class="menu_id_hide_box">
								<input class="txt_email_num" placeholder="이메일 인증번호 확인"
									name="in_text_email"
									onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />

								<button class="email_re_btn">재발급</button>
								<br>
							</div>

						</div>


					</div>

					<div class="box_find">
						<a class="find_id_btn">아이디 찾기</a>
					</div>


				</div>
			</div>
			
			<div class="modal_step">

				<div class="modal-box find">


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



					<div class="title_find_menu">
						<h3 class="title_find_menu_pw">비밀번호 찾기</h3>
					</div>
					<div class="menu_choice_box">
						<ul class="menu_choice_box_op">
							<li class="menu_choice_box_id"><a>아이디 찾기</a></li>
							<li class="menu_choice_box_pw"
								style="background: rgba(185, 108, 108, 0.5);"><a>비밀번호
									찾기</a></li>
						</ul>
					</div>

					<div class="menu_pw_box">
						<div class="menu_pw_box_content">

							<input class="txt_name" placeholder="이름"> <br> <input
								class="txt_email" placeholder="이메일">
							<button type="button" class="email_btn"
								onclick="alert('인증메일을 보냈습니다'); pw_show();">확인</button>
							<br>

							<div id="user_email_2" style="display: none" class="menu_pw_hide_box">
								<input class="txt_email_num" placeholder="이메일 인증번호 확인"
									onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />

								<button class="email_re_btn">재발급</button>
								<br>
							</div>

						</div>

					</div>




					<div class="box_find">
						<a class="find_pw_btn">비밀번호 찾기</a>
					</div>

				</div>


			</div>
			
			<div class="modal_step">
				<div class="modal-box ch">


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
					<div class="title_find_menu">
						<h3 class="title_find_menu_new_pw">새 비밀번호 변경</h3>
					</div>

					<div class="menu_new_pw_box">
						<div class="menu_new_pw_box_content">
							<input class="box_txtpw" placeholder="새 비밀번호" type="password"
								id="password" onkeyup="chkPW();">
							<div class="menu_new_span_box">
								<span class="small_text">*숫자,특수문자,영대소문자 조합 필수</span> <br> <span
									class="menu_new_pw_box_pw" id="pw_msg" onkeyup="chkPW();"></span>
							</div>

							<br> <input class="box_txtpw_re" placeholder="새 비밀번호 확인"
								type="password" id="password1" onkeyup="atPW();"> <br>
							<span class="menu_new_pw_box_pw" onkeyup="atPW();" id="pw_at_msg"></span>





						</div>
					</div>
					<div class="box_find">
						<a class="find_new_pw_btn" onclick="chkPW()">비밀번호 변경</a>
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
        

        function Change() {
            var key = selectBox.value;
            if (key == 2) {
                document.all["div1"].style.display = "block";

                var el = document.getElementsByName('in_text_email');
                for (var i = 0; i < el.length; i++) {
                    el[i].value = '';
                }
                document.getElementById("user_email_1").style.display = "none";


            } else
                document.all["div1"].style.display = "none";
            var el = document.getElementsByName('in_text_email');
            for (var i = 0; i < el.length; i++) {
                el[i].value = '';
            }
            document.getElementById("user_email_1").style.display = "none";
        }

        
        function id_show() {
            document.getElementById("user_email_1").style.display = "block";
        }
        
        
        function pw_show() {
            document.getElementById("user_email_2").style.display = "block";
        }
        
        
        function atPW() {
            var p1 = document.getElementById('password').value;
            var p2 = document.getElementById('password1').value;
            if (p1 != p2) {
                document.getElementById("pw_at_msg").innerHTML = 
                    "<font color=red >비밀번호가 일치하지 않습니다.</font>";
                return false;
            } else {
                document.getElementById("pw_at_msg").innerHTML = 
                     "<font color=blue >비밀번호가 일치합니다.</font>";
                return true;
            }
        }
        
    </script>
	</form>
</body>
</html>