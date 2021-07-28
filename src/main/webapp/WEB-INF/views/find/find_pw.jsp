<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/modal.css">
<link rel="stylesheet" href="../css/find.css">

<body class="modal_body">
<%@ include file="../index.jsp" %>
<!-- 	<h2>모달창만들기</h2> -->
<!-- 	<button id="modal-open-btn">로그인모달창</button> -->
<!-- 	<div id="modal-overlay"> -->


		<div class="modal-wrapper">
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
						<li class="menu_choice_box_id"><a onclick="location.href='find_id.jsp'">아이디
								찾기</a></li>
						<li class="menu_choice_box_pw"
							style="background: rgba(185, 108, 108, 0.5);"><a>비밀번호 찾기</a></li>
					</ul>
				</div>

				<div class= "menu_pw_box">
					<div class="menu_pw_box_content">

						<input class="txt_name" placeholder="이름"> <br> 
						<input class="txt_email" placeholder="이메일">
						<button type="button" class="email_btn"
							onclick="alert('인증메일을 보냈습니다'); div_show();">확인</button>
						<br>

						<div id="user_email" style="display: none" class="menu_pw_hide_box">
							<input class="txt_email_num" placeholder="이메일 인증번호 확인"
								onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />

							<button class="email_re_btn">재발급</button>
							<br>
						</div>

					</div>

				</div>




				<div class="box_find">
					<button class="find_btn"><a onclick="location.href='change_pw.jsp'">비밀번호 찾기</button>
				</div>

			</div>
		</div>
<!-- 	</div> -->

	<script type="text/javascript">
            //      const modalOpenBtn = document.getElementById("modal-open-btn");
            const modalCloseBtn = document.getElementById("modal-close-btn");
            const modalWrapper = document.querySelector(".modal-wrapper");

            //      console.log(modalWrapper.style);

            //      modalOpenBtn.addEventListener("click", () => {
            modalWrapper.style.display = "flex";
            //      });

            modalCloseBtn.addEventListener("click", () => {
                modalWrapper.style.display = "none";
            });
            
            


            function div_show() {
                document.getElementById("user_email").style.display = "block";
            }

        </script>





</body>

</html>
