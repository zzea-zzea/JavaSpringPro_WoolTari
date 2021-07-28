<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/sign_up.css">


<body>

	<%@ include file="../index.jsp" %>

	<main class="sign_up_main"> 

<div class="modal-wrapper">
		<div class="modal-wrapper-box">
			<button id="modal-close-btn" class="modal-close-btn">
				<svg xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
					id="Capa_1" x="0px" y="0px" viewbox="0 0 52.001 52.001"
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


			<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
			<script>
                    function chkPW() {
                        var reg = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,}$/;

                        var pw = $("#user_pw").val();

                        if (false === reg.test(pw)) {
                            document.getElementById("pw_msg").innerHTML = "비밀번호 형식에 맞지않습니다";
                        } else {
                            ddocument.getElementById("pw_msg").innerHTML = 
                    "<font color=blue>비밀번호 사용 가능</font>";
                        }

                    }


                    function chkID() {
                        var reg = /^[A-Za-z0-9+]{4,12}$/;

                        var id = $("#sign_Id").val();

                        if (false === reg.test(id)) {
                            document.getElementById("id_msg").innerHTML = "아이디 사용 불가능";
                        } else {
                            document.getElementById("id_msg").innerHTML = "<font color=blue>아이디 사용 가능</font>";
                        }
                        return false;

                    }


                    function chkNick() {
                        var reg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;

                        var nick = $("#nick_name").val();

                        if (false === reg.test(nick)) {
                            document.getElementById("nick_msg").innerHTML = "별명 사용 불가능";
                        } else {
                            document.getElementById("nick_msg").innerHTML = "<font color=blue>별명 사용 가능</font>";
                        }
            

                    }
             
                </script>


			<script>
                    function formCheck(form) {
                        if (form.user_Id.value == "") {
                            alert('아이디를 기입하세요');
                            form.user_Id.focus();
                            return;
                            
                        }
                        if (form.user_Name.value == "") {
                            alert('이름을 기입하세요');
                            form.user_Name.focus();
                            return;
                        }
                        if (form.str_email01.value == "") {
                            alert('이메일을 기입하세요');
                            form.str_email01.focus();
                            return;
                        }
                        if (form.pswd.value == "") {
                            alert('암호를 기입하세요');
                            form.pswd.focus();
                            return;
                        }
                          if (form.pswdCheck.value == "") {
                            alert('암호를 기입하세요');
                            form.pswdCheck.focus();
                            return;
                        }

                        alert(form.user_Id.value + '(' +
                            form.user_Name.value + ") 님의 \n 회원가입이 완료되었습니다."
                        );

                    }

                    function keycheck1(x) {
                        if (x.value.length == 3) {
                            userPhoneNum2.focus()
                        }
                    }


                    function keycheck2(x) {
                        if (x.value.length == 4) {
                            userPhoneNum3.focus()
                        }
                    }


                    function passwordCheckFunc() {
                        var password = document.getElementById("user_pw").value;
                        var passwordCheck = document.getElementById("pwck").value;

                        if (password == '') {
                            document.getElementById("passwordCheckText").innerHTML = "비밀번호 비어있음";
                        } else {
                            if (password != passwordCheck) {
                                document.getElementById("passwordCheckText").innerHTML = "일치하지 않습니다.";
                            } else {
                                document.getElementById("passwordCheckText").innerHTML = "일치합니다. ";
                            }
                        }
                    }

                    function div_show() {
                        document.getElementById("signup_user_email_check_td_invisible").style.display = "block";

                    }

                    function div_hide() {
                        document.getElementById("signup_user_email_check_td_invisible").style.display = "none";
                    }


                    function email_change() {

                        if (document.form.email.options[document.orm.email.selectedIndex].value == '0') {
                            document.form.email2.disabled = true;
                            document.form.email2.value = "";
                        }

                        if (document.form.email.options[document.form.email.selectedIndex].value == '9') {
                            document.form.email2.disabled = false;
                            document.form.email2.value = "";
                            document.form.email2.focus();
                        } else {
                            document.form.email2.disabled = true;
                            document.form.email2.value = document.form.email.options[document.form.email.selectedIndex].value;
                        }

                    }

                    function comNumCheck1(x) {
                        if (x.value.length == 3) {
                            comNum2.focus()
                        }
                    }


                    function comNumCheck2(x) {
                        if (x.value.length == 2) {
                            comNum3.focus()
                        }
                    }
                </script>

			<!--                -->
			<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
			<script type="text/javascript">
                    $(document).ready(function(){
                        $('#selectBox').change(function(){
                            var result = $('#selectBox option:selected').val();
                            if( result == 'option2'){
                                $('.signup_companyName_and_Number').show();
                                $('.signup_hide_company').hide();
                            }else{
                                $('.signup_companyName_and_Number').hide();
                                $('.signup_hide_company').show();
                            }
                        });
                    });
                                     
                </script>




			<div id="h1_line">
				<center>


					<form name="form" method="get" id="signup_form"
						onsubmit="formCheck(form);" class="signup_signup_form">

						<div id="h2_line" align="center" class="signup_head">
							<h2 align="center" style="color:#bd7373" >회원가입</h2>

						</div>

						<div id="signup_div" class ="signup_join_div">

							<table class="signup_table1">
								<tr>
									<th>구분</th>
									<td>
										<div class="signup_td_div_po">
											<select class="signup_email_selectbox" id="selectBox"
												onclick="Change()" >
												<option value="option1" selected="selected">개인</option>
												<option value="option2">사업자</option>
											</select> <br>
										</div>
									</td>

								</tr>

								<tr>
									<th class="signup_label_id_and_nickname">아이디</th>
									<td>
										<div class="signup_td_div_po">
											<input name="user_Id" type="text" class="signup_sign_in_input"
												id="sign_Id" onkeyup="chkID();" required> <input
												type="button" value="click" a href="#"
												onclick="alert('사용가능합니다')"> <span class="signup_small_text"><br>*4~12자리
												영대소문자와 숫자로만 입력가능합니다</span> <br>
											<span class="signup_pw_text" id="id_msg" onkeyup="chkID();"></span>
										</div>
									</td>
								</tr>

								<tr>
									<th class="signup_label_id_and_nickname">별명</th>
									<td>
										<div class="signup_td_div_po">
											<input name="userNickname" id="nick_name" type="text"
												class="signup_sign_in_input" maxlength="15" required onkeyup="chkNick();">
											<input type="button" value="click" a href="#"
												onclick="alert('사용가능합니다')"> <span class="signup_small_text"><br>*영대소문자,한글,숫자만
												가능합니다</span><br> <span class="signup_pw_text" id="nick_msg"
												onkeyup="chkNick();"></span>

										</div>

									</td>
								</tr>

								<tr>
									<th>비밀번호</th>
									<td>
										<div class="signup_td_div_po">
											<input type="password" required class="signup_sign_in_input" id="user_pw"
												name="pswd" onkeyup="chkPW();"> <span
												class="signup_small_text"><br>*숫자,특수문자,영대소문자 조합 필수입니다</span><br>
											<span class="signup_pw_text" id="pw_msg" onkeyup="chkPW();"></span>
										</div>

									</td>
								</tr>


								<tr>
									<th>비밀번호 확인</th>
									<td>
										<div class="signup_td_div_po">
											<input type="password" id="pwck" required class="signup_sign_in_input"
												name="pswdCheck" onkeyup="passwordCheckFunc();"><br>
											<span class="signup_small_text" id="passwordCheckText"></span>
										</div>

									</td>
								</tr>


								<tr id="comp_none1" class="signup_hide_company">
									<th>이름</th>
									<td>
										<div class="signup_td_div_po">
											<input type="text" name="user_name" class="signup_sign_in_input"
												id="userName" maxlength="10" pattern="/^[가-힣]{1,}+$/">


										</div>
									</td>
								</tr>


								<tr id="company1" class="signup_companyName_and_Number">
									<th>대표자 이름</th>
									<td>
										<div class="signup_td_div_po">
											<input type="text" required name="company_name"
												class="signup_sign_in_input" id="compName" pattern="/^[가-힣]+$/">
										</div>
									</td>
								</tr>

								<tr id="company2" class="signup_companyName_and_Number">
									<th>사업자 번호</th>
									<td>
										<div class="signup_td_div_po">
											<input type="text"
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												maxlength="3" name="comRegNum1" id="comNum1"
												class="sign_in_phone_input" onkeypress="comNumCheck1(this)"
												required> - <input type="text"
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												name="comRegNum2" id="comNum2" maxlength="2"
												class="sign_in_phone_input" onkeypress="comNumCheck2(this)"
												required> - <input type="text"
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												name="comRegNum3" id="comNum3" maxlength="5"
												class="sign_in_phone_input" required>
										</div>
									</td>
								</tr>

								<tr id="comp_none2" class="signup_hide_company">
									<th>성별</th>
									<td>
										<div class="signup_td_div_po">
											<input type="radio" name="gender" checked> 여자 <input
												type="radio" name="gender"> 남자
										</div>
									</td>
								</tr>


								<tr>
									<th>이메일</th>
									<td>
										<div class="signup_td_div_po1_email">
											<input type="text" class="signup_sign_in_email_input" name="str_email01"
												id="str_email01" required> @ <input type="text"
												class="signup_sign_in_email_input" name="str_email02" id="str_email02"
												disabled value="naver.com"> <select
												name="selectEmail" class="signup_sign_in_email_input" id="selectEmail">
												<option value="1">직접입력</option>
												<option value="naver.com" selected>naver.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="nate.com">nate.com</option>
											</select> <input type="button" class="signup_verify_button" value="send" a
												href="#" onclick="alert('인증메일을 보냈습니다');div_show();">
										</div>
									</td>
								</tr>


								<!-- onclick 하면 나와야할 부분 -->

								<tr class="signup_user_email_check_tr">
									<th>이메일인증</th>
									<td class="signup_user_email_check_td_invisible">
										<div class="signup_td_div_po2">

											<input type="text" class="signup_email_veri_text"
												name="email_verify_text" id="email_verify" required>
											
												<input type="button" class="signup_sign_in_email_button1"
													id="email_verify_button1" name="email_button"
													value="confirm" a href="#" onclick="alert('인증되었습니다')">
												<input type="button" id="email_verify_button2"
													class="signup_sign_in_email_button2" name="email_button"
													value="resend" a href="#" onclick="alert('인증메일을 재발급되었습니다')">
										</div>
									</td>
								</tr>

								<tr id="comp_none3" class="signup_hide_company">
									<th>휴대폰 번호</th>
									<td>
										<div class="signup_td_div_po">
											<input type="text"
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												required maxlength="3" name="userPhoneNum1"
												id="userPhoneNum1" class="sign_in_phone_input"
												onkeypress="keycheck1(this)"> - <input type="text"
												required
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												name="userPhoneNum2" id="userPhoneNum2" maxlength="4"
												class="sign_in_phone_input" onkeypress="keycheck2(this)">
											- <input type="text" required
												onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
												name="userPhoneNum3" id="userPhoneNum3" maxlength="4"
												class="sign_in_phone_input">
										</div>
									</td>
								</tr>



								<tr id="comp_none4" class="signup_hide_company">
									<th>생년월일</th>
									<td>
										<div class="signup_td_div_po">
											<input type="date" required class="signup_sign_in_input" id="userBday"
												name="userBday">
										</div>
									</td>
								</tr>
							</table>

						</div>

					</form>

				</center>


			</div>
			<div class="signup_button_div">
				<input type="button" class="signup_previous_button" id="prev_button"
					value="Prev" onclick="alert('이전화면으로 돌아갑니다');"> <input
					
					type="submit" class="signup_next_button" id="nxt_button" value="JOIN"
					onclick="formCheck(form);">
			</div>

		</div>




		<script src="./jquery-3.4.1.min.js"></script>
		<script type="text/javascript"
			src="http://code.jquery.com/jquery-latest.js"></script>
		<script type="text/javascript">
                    //이메일 입력방식 선택
                    $('#selectEmail').change(function() {
                        $("#selectEmail option:selected").each(function() {
                            if ($(this).val() == '1') {
                                //직접입력일 경우
                                $("#str_email02").val('');
                                //값 초기화 
                                $("#str_email02").attr("disabled", false); //활성화 
                            } else {
                                //직접입력이 아닐경우 
                                $("#str_email02").val($(this).text());
                                //선택값 입력 
                                $("#str_email02").attr("disabled", true); //비활성화
                            }
                        });
                    });
                </script>


		<script>
                    //                    const modalOpenBtn = document.getElementById("modal-open-btn");
                    const modalCloseBtn = document.getElementById("modal-close-btn");
                    const modalWrapper = document.querySelector(".modal-wrapper");

                    //                    console.log(modalWrapper.style);

                    //                    modalOpenBtn.addEventListener("click", () => {
                    modalWrapper.style.display = "flex";
                    //                    });

                    modalCloseBtn.addEventListener("click", () => {
                        modalWrapper.style.display = "none";
                    });
                </script>


	</div>
	</main>
    </body>
</html>