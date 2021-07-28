<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/find.css">
<link rel="stylesheet" href="../css/modal.css">


<body class="modal_body">
<%@ include file="../index.jsp" %>
<!-- 	<h2>모달창만들기</h2> -->
	<button id="modal-open-btn" class>아이디 / 비밀번호 찾기</button>
<!-- 	<div id="modal-overlay"> -->


		<div class="modal-wrapper" id="mymodal">
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
						<li class="menu_choice_box_id" style="background: rgba(185, 108, 108, 0.5);"><a>아이디
								찾기</a></li>
						<li class="menu_choice_box_pw"><a>비밀번호 찾기</a></li>
					</ul>
				</div>

				<div class="menu_id_box" id="input_box">
					<div class="menu_id_box_content">
						<select class="content_choice_box" id="selectBox" onclick="Change()">
							<option value="1">개인</option>
							<option value="2">사업자</option>
						</select> <br> 
						<input class="txt_name" name="in_text"
							placeholder="이름"> 
							<br>
						<div id="div1" style="display: none" class="menu_id_hide_box">
							<input class="txt_business_num" placeholder="사업자번호"
								name="in_text"
								onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> <br>
							<div class="txt_hide">
							<span class="hide_small">'-'을 제외한 번호만 입력해주세요</span>
						</div>
						</div>
						<input class="txt_email" placeholder="이메일" name="in_text">
						<button type="button" class="email_btn"
							onclick="alert('인증메일을 보냈습니다'); div_show();">확인</button>
						<br>

						<div id="user_email" style="display: none" class="menu_id_hide_box">
							<input class="txt_email_num" placeholder="이메일 인증번호 확인"
								name="in_text"
								onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />

							<button class="email_re_btn">재발급</button>
							<br>
						</div>

					</div>


				</div>

				<div class="box_find">
					<button class="find_btn">아이디 찾기</button>
				</div>


			</div>
		</div>
<!-- 	</div> -->


	<script type="text/javascript">
        // -------------------모달창 -----------------        
        //      const modalOpenBtn = document.getElementById("modal-open-btn");
        const modalCloseBtn = document.getElementById("modal-close-btn");
        const modalWrapper = document.querySelector(".modal-wrapper");

        //       console.log(modalWrapper.style);

        //      modalOpenBtn.addEventListener("click", () => {
        modalWrapper.style.display = "flex";
//               });

        modalCloseBtn.addEventListener("click", () => {
            modalWrapper.style.display = "none";
        });


        function Change() {
            var key = selectBox.value;
            if (key == 2) {
                document.all["div1"].style.display = "block";

                var el = document.getElementsByName('in_text');
                for (var i = 0; i < el.length; i++) {
                    el[i].value = '';
                }
                document.getElementById("user_email").style.display = "none";


            } else
                document.all["div1"].style.display = "none";
            var el = document.getElementsByName('in_text');
            for (var i = 0; i < el.length; i++) {
                el[i].value = '';
            }
            document.getElementById("user_email").style.display = "none";
        }

        function div_show() {
            document.getElementById("user_email").style.display = "block";
        }
    </script>

</body>
</html>