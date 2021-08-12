<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>


<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>

<script>
$(document).ready(
function() {
/*  modal_step:eq(0)약관동의
modal_step:eq(1) 회원가입 */

$(".join_link").click(function() {
$('.modal_step').show();
};
$.(.terms_and_conditions_wrap_next-button).click(function)(){
$('.modal_step').hide();
$('.modal_step':eq(1)').show();
};

</script>


<body class="modal_body_join">
	<%@ include file="../index.jsp"%>
	<form action="member_join.woo" method="post">

		<main class="sign_up_main">


			<div class="modal-wrapper_join">


				<div class="modal_step">


					<div class="modal-wrapper-box_join">
						<button id="modal-close-btn" class="modal-close-btn_join">
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
                        var reg = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,30}$/;

                        var pw = $("#user_pw").val();

                        if (false === reg.test(pw)) {
                            document.getElementById("pw_msg").innerHTML = "비밀번호 형식에 맞지않습니다";
                        } else {
                            document.getElementById("pw_msg").innerHTML = "<font color=blue>비밀번호 사용 가능</font>";
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


						<script type="text/javascript">
						
                    function formCheck() {
                   
                    var getId = document.getElementById("sign_Id");
                    var getPw = document.getElementById("user_pw");
                    var getName = document.getElementById("userName");
                    var getEmail1 = document.getElementById("str_email01");
                    var getEmail2 = document.getElementById("str_email02");
                    var getPhone1 =  document.getElementById("userPhoneNum1");
                    var getPhone2 =  document.getElementById("userPhoneNum2");
                    var getPhone3 =  document.getElementById("userPhoneNum3");
                    
                    var arrEmail1 = new Array();
                    var arrEmail2 = new Array();
                    var arrEmail3 = new Array();
                    var arrPhone1 = new Array();
                    var arrPhone2 = new Array();
                    var arrPhone3 = new Array();
                    
                    var tempEmail= null;
                    var tempPhone= 0;
//                     이메일
                    for(var i = 0; i<getEmail1.value.length; i++){
                    	arrEmail1[i] = getEmail1.value.charAt(i);
                    }
                    for(var i = 0; i<getEmail2.value.length; i++){
                    	arrEmail2[i] = getEmail2.value.charAt(i);
                    }
                    for(var i = 0; i<getEmail1.value.length; i++){
                    	tempEmail += getEmail1[i];
                    }
                    for(var i = 0; i<getEmail2.value.length; i++){
                    	tempEmail += getEmail2[i];
                    }
//                     핸드폰
                    for(var i = 0; i<getPhone1.value.length; i++){
                    	arrPhone1[i] = getPhone1.value.charAt(i);
                    }
                    for(var i = 0; i<getPhone2.value.length; i++){
                    	arrPhone2[i] = getPhone2.value.charAt(i);
                    }
                    for(var i = 0; i<getPhone3.value.length; i++){
                    	arrPhone3[i] = getPhone3.value.charAt(i);
                    }
                    var Phonenum = getPhone1 +"-"+ getPhone2 +"-"+ getPhone3;
                    var regExp = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
                    
                        if ((getId.value) == "") {
                            alert('아이디를 기입하세요');
                            getId.focus();
                            return false;
                           
                        }
                        if ((getPw.value) == "") {
                            alert('암호를 기입하세요');
                            getPw.focus();
                            return false;
                        }
                        if ((getName.value) == "") {
                            alert('이름을 기입하세요');
                            getName.focus();
                            return false;
                           
                     
                        }
                        if ((getEmail1.value) == "") {
                            alert('이메일을 기입하세요');
                            getEmail1.focus();
                            return false;
                        }        
                   
                        if ((tempPhone.length) <= 11 ) {
                            alert('핸드폰 번호를 기입하세요');
                            getPhone1.value == "";
                            getPhone2.value == "";
                            getPhone3.value == "";
                            getPhone1.focus();
                           
                            return false;
                        }
                          location.replace('login.woo');
                          alert((getId.value) + '(' +
                            (getName.value) + ") 님의 \n 회원가입이 완료되었습니다."
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
                
                <script src="http://code.jquery.com/jquery-3.1.1.js"></script>
					<script>
					$(function(){	
						$(document).on("change", "select[name=list]", function(){
							var value = $(this).find("option:selected").val();
							var inputText1 = $(this).closest('.selectBox').find('.signup_companyName_and_Number');
							var inputText2 = $(this).closest('.selectBox').find('.signup_hide_company');

							var flag = false;
							if (value == option2) {
								flag = true;
								$(inputText1).val('');
							}
							
							$(inputText1).attr("disabled", flag);
							$(inputText2).attr("disabled", flag);
						});
					
					})
					</script>



						<div id="signup_form" class="signup_signup_form">
							<div name="form" id="signup_form" class="signup_signup_form">
								<div align="center" class="signup_head">
									<h2 align="center" style="color: #bd7373">회원가입</h2>

								</div>

								<div id="signup_div" class="signup_join_div">

									<table class="signup_table1">

										<tr>
											<th>구분</th>
											<td>
												<div class="signup_td_div_po">
													<select name="list" class="signup_email_selectbox" id="selectBox"
														onclick="Change()">
														<option value="option1" selected="selected">개인</option>
														<option id = "option2_comp"value="option2">사업자</option>
													</select> <br>
												</div>
											</td>

										</tr>

										<tr>
											<th>아이디</th>
											<td>
												<div class="signup_td_div_po">
													<input name="id" type="text" class="signup_sign_in_input"
														id="sign_Id" onkeyup="chkID();" > <input
														type="button" value="click" onclick="alert('사용가능합니다')">
													<span class="signup_small_text"><br>*4~12자리
														영대소문자와 숫자로만 입력가능합니다</span><br> <span class="signup_pw_text"
														id="id_msg" onkeyup="chkID();"></span>
												</div>
											</td>
										</tr>

										<tr>
											<th>별명</th>
											<td>
												<div class="signup_td_div_po">
													<input name="nickname" id="nick_name" type="text"
														class="signup_sign_in_input" maxlength="15" 
														onkeyup="chkNick();"> <input type="button"
														value="click" onclick="alert('사용가능합니다')"> <span
														class="signup_small_text"><br>*영대소문자,한글,숫자만
														가능합니다</span> <br> <span class="signup_pw_text" id="nick_msg"
														onkeyup="chkNick();"></span>

												</div>

											</td>
										</tr>

										<tr>
											<th>비밀번호</th>
											<td>
												<div class="signup_td_div_po">
													<input type="password" 
														class="signup_sign_in_input" id="user_pw" name="pw"
														onkeyup="chkPW();"> <span
														class="signup_small_text"><br>*숫자,특수문자,영대소문자
														조합 필수입니다</span><br> <span class="signup_pw_text" id="pw_msg"
														onkeyup="chkPW();"></span>
												</div>

											</td>
										</tr>


										<tr>
											<th>비밀번호 확인</th>
											<td>
												<div class="signup_td_div_po">
													<input type="password" id="pwck" 
														class="signup_sign_in_input" name="pswdCheck"
														onkeyup="passwordCheckFunc();"><br> <span
														class="signup_small_text" id="passwordCheckText"></span>
												</div>

											</td>
										</tr>


										<tr id="comp_none1" class="signup_hide_company">
											<th>이름</th>
											<td>
												<div class="signup_td_div_po">
													<input type="text" name="name" class="signup_sign_in_input"
														id="userName" maxlength="10" pattern="/^[가-힣]{1,}+$/">


												</div>
											</td>
										</tr>


										 <tr id="company1" class="signup_companyName_and_Number" style="display: none;">										 <th>대표자 이름</th> 
										 <td> 
										<div class="signup_td_div_po"> 
										<input type="text" name="name"
										class="signup_sign_in_input" id="compName" pattern="/^[가-힣]+$/"> -->
										</div>
										 </td> 
										 </tr> 

										<tr id="company2" class="signup_companyName_and_Number"
											style="display: none;">
											<th>사업자 번호</th>
											<td>
												<div class="signup_td_div_po">
													<input type="text"
														onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
														maxlength="3" name="buisness" id="comNum1"
														class="sign_in_comp_input" onkeypress="comNumCheck1(this)"
														> - <input type="text"
														onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
														name="buisness" id="comNum2" maxlength="2"
														class="sign_in_comp_input" onkeypress="comNumCheck2(this)"
														> - <input type="text"
														onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
														name="buisness" id="comNum3" maxlength="5"
														class="sign_in_comp_input" >
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
											<th class="signup_email_label">이메일</th>
											<td>
												<div class="signup_td_div_po1_email">
													<input type="text" class="signup_sign_in_email_input"
														name="email" id="str_email01"> @ <input
														type="text" class="signup_sign_in_email_input"
														name="str_email02" id="str_email02" disabled
														value="naver.com"> <select name="selectEmail"
														class="signup_sign_in_email_input" id="selectEmail">
														<option value="1">직접입력</option>
														<option value="naver.com" selected>naver.com</option>
														<option value="hanmail.net">hanmail.net</option>
														<option value="hotmail.com">hotmail.com</option>
														<option value="nate.com">nate.com</option>
													</select> <input type="button" class="signup_verify_button"
														value="send" a href="#"
														onclick="alert('인증메일을 보냈습니다');div_show();">
												</div>
											</td>
										</tr>


										<!-- onclick 하면 나와야할 부분 -->

										<tr class="signup_user_email_check_tr">
											<th>이메일인증</th>
											<td id="signup_user_email_check_td_invisible">
												<div class="signup_td_div_po2">

													<input type="text" class="signup_email_veri_text"
														name="email_verify_text" id="email_verify">

													<input type="button" class="signup_sign_in_email_button1"
														id="email_verify_button1" name="email_button"
														value="confirm" a href="#" onclick="alert('인증되었습니다')">
													<input type="button" id="email_verify_button2"
														class="signup_sign_in_email_button2" name="email_button"
														value="resend" a href="#"
														onclick="alert('인증메일을 재발급되었습니다')">
												</div>
											</td>
										</tr>

										<tr id="comp_none3" class="signup_hide_company">
											<th>휴대폰 번호</th>
											<td>
												<div class="signup_td_div_po">
													<input type="text"
														onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
														 maxlength="3" name="phone1" id="userPhoneNum1"
														class="sign_in_phone_input" onkeypress="keycheck1(this)">
													- <input type="text" 
														onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
														name="phone2" id="userPhoneNum2" maxlength="4"
														class="sign_in_phone_input" onkeypress="keycheck2(this)">
													- <input type="text" 
														onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
														name="phone3" id="userPhoneNum3" maxlength="4"
												class="sign_in_phone_input">
														</div>
											</td>
										</tr>



										<tr id="comp_none4" class="signup_hide_company">
											<th>생년월일</th>
											<td>
												<div class="signup_td_div_po">
													<input type="date" required class="signup_sign_in_input"
														id="userBday" name="brith">
												</div>
											</td>
										</tr>
									</table>

								</div>

							</div>


							<div class="signup_button_div">
								<input type="button" class="signup_previous_button"
									id="prev_button" value="Prev" onclick="alert('이전화면으로 돌아갑니다'); ">
								<input type="submit" class="signup_next_button" id="nxt_button"
									value="JOIN" onclick="formCheck();">
							</div>




							
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
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
                    const modalWrapper = document.querySelector(".modal-wrapper_join ");

                    //                    console.log(modalWrapper.style);

                    //                    modalOpenBtn.addEventListener("click", () => {
                    modalWrapper.style.display = "flex";
                    //                    });

                    modalCloseBtn.addEventListener("click", () => {
                        modalWrapper.style.display = "none";
                    });
                </script>


						</div>
					</div>
				</div>
				</div>
		</main>
	</form>

</body>

</html>