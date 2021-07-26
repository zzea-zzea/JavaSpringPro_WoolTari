<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<style>
.first_box {
	height: 1000px;
}
.first_box .enter_sponsor_information_box {
    border: 1px solid;
    height: 1000px;
    margin: 150px auto;
    width: 1200px;
}
.first_box .enter_sponsor_information_box .main_image_box {
	width: 1000px;
    height: 450px;
     margin: 0 auto;
}
.first_box .enter_sponsor_information_box .main_image_box .support_image input {
	width: 1000px;
	height: 400px;
	position: relative;
}
.first_box .enter_sponsor_information_box .main_image_box .support_image p {
    position: absolute;
    top: 135px;
    left: 540px;
    font-size: 30px;
    color: navy;
    font-weight: 900;
}
.
</style>
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
        document.getElementById("user_email_check_td").style.display = "block";

    }

    function div_hide() {
        document.getElementById("user_email_check_tr").style.display = "none";
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
<body>
<%@ include file="../common/_header.jsp"%>
<form action="nextsupport.woo">	
<div class="first_box">
	<div class="enter_sponsor_information_box">
		<div class="main_image_box">
			<div class="support_image">
				<input type="image" src="../img/main/main.image.jpg">
				<p>
					후원하시면 한부모 가정에게<br>행복을 전달할 수 있습니다.
				</p>
			</div>
		</div>
		<div class="enter_sponsor_information_view">
			<div class="enter_sponsor_information_title">
				<h4>후원자 정보 입력 하기</h4>
			</div>
			<hr>
				<div class="enter_sponsor_information_table">
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
                        document.getElementById("user_email_check_td").style.display = "block";

                    }

                    function div_hide() {
                        document.getElementById("user_email_check_tr").style.display = "none";
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
					<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
					<script type="text/javascript">
                    $(document).ready(function(){
                        $('#selectBox').change(function(){
                            var result = $('#selectBox option:selected').val();
                            if( result == 'option2'){
                                $('.bs_1').show();
                                $('.hide_1').hide();
                            }else{
                                $('.bs_1').hide();
                                $('.hide_1').show();
                            }
                        });
                    });                    
                </script> 
<div id="h1_line">
			<div id="signup_div">
				<table class="table1">
					<tr>
						<th>구분</th>
						<td>
							<div class="td_div_po">
								<select class="inputtxt sel" id="selectBox"
									onclick="Change()" style="width: 100px; height: 30px">
						<option value="option1" selected="selected">개인</option>
						<option value="option2">사업자</option>
					</select> <br>
				</div>
			</td>
		</tr>
		<tr id="comp_none1" class="hide_1">
			<th>이름</th>
			<td>
				<div class="td_div_po">
					<input type="text" name="user_name" class="sign_in"
						id="userName" maxlength="10" pattern="/^[가-힣]{1,}+$/">
				</div>
			</td>
		</tr>
		<tr id="company1" class="bs_1">
			<th>대표자 이름</th>
			<td>
				<div class="td_div_po">
					<input type="text" required name="company_name"
						class="sign_in" id="compName" pattern="/^[가-힣]+$/">
				</div>
			</td>
		</tr>
		<tr id="company2" class="bs_1">
			<th>사업자 번호</th>
			<td>
				<div class="td_div_po">
					<input type="text"
						onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						maxlength="3" name="comRegNum1" id="comNum1"
						class="sign_in phone" onkeypress="comNumCheck1(this)"
						required> - <input type="text"
						onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						name="comRegNum2" id="comNum2" maxlength="2"
						class="sign_in phone" onkeypress="comNumCheck2(this)"
						required> - <input type="text"
						onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						name="comRegNum3" id="comNum3" maxlength="5"
						class="sign_in phone" required>
				</div>
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
				<div class="td_div_po1">
					<input type="text" class="sign_in email" name="str_email01"
						id="str_email01" required> @ <input type="text"
						class="sign_in email" name="str_email02" id="str_email02"
						disabled value="naver.com"> <select
						name="selectEmail" class="sign_in email" id="selectEmail">
						<option value="1">직접입력</option>
						<option value="naver.com" selected>naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="hotmail.com">hotmail.com</option>
						<option value="nate.com">nate.com</option>
					</select> <input type="button" class="verify_button" value="send" a
						href="#" onclick="alert('인증메일을 보냈습니다');div_show();">
				</div>
			</td>
		</tr>
		<tr id="user_email_check_tr">
			<th>이메일인증</th>
			<td id="user_email_check_td">
				<div class="td_div_po2">

					<input type="text" class="email_veri_text"
						name="email_verify_text" id="email_verify" required>
					<div class="email_busttons">
						<input type="button" class="sign_in_email_button1"
							id="email_verify_button1" name="email_button"
							value="인증" a href="#" onclick="alert('인증되었습니다')">
						<input type="button" id="email_verify_button2"
							class="sign_in_email_button2" name="email_button"
							value="재발급" a href="#"
							onclick="alert('인증메일을 재발급되었습니다')">
					</div>
				</div>
			</td>
		</tr>
		<tr id="comp_none3" class="hide_1">
			<th>휴대폰 번호</th>
			<td>
				<div class="td_div_po">
					<input type="text"
						onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						required maxlength="3" name="userPhoneNum1"
						id="userPhoneNum1" class="sign_in phone"
						onkeypress="keycheck1(this)"> - <input type="text"
						required
						onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						name="userPhoneNum2" id="userPhoneNum2" maxlength="4"
						class="sign_in phone" onkeypress="keycheck2(this)">
					- <input type="text" required
						onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
						name="userPhoneNum3" id="userPhoneNum3" maxlength="4"
										class="sign_in phone">
								</div>
							</td>
						</tr>
						<tr id="comp_none4" class="hide_1">
							<th>생년월일</th>
							<td>
								<div class="td_div_po">
									<input type="date" required class="sign_in" id="userBday"
										name="userBday">
								</div>
							</td>
						</tr>
					</table>

				</div>
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
<div class="wrap">
	<div class="logo">
		<h3>이용약관</h3>
	</div>
	<div class="contents">
		<div class="terms__check__all">

			<label for="agree_all" class="all_ck"> <input
				type="checkbox" name="agree_all" id="agree_all"> <span
				class="checked_all">모두 동의합니다</span>
			</label>

			<dr> <script>
                // 동의 모두선택 / 해제
                const agreeChkAll = document.querySelector('input[name=agree_all]');
                agreeChkAll.addEventListener('change', (e) => {
                    let agreeChk = document.querySelectorAll('input[name=agree]');
                    for (let i = 0; i < agreeChk.length; i++) {
                        agreeChk[i].checked = e.target.checked;
                    }S
                });

            </script>
				<ul class="terms__list">
					<li class="terms__box">
						<div class="input__check">
							<label for="agree" class="required"> <input
								type="checkbox" name="agree" value="1" required> <span>이용약관
									동의<strong>(필수)</strong>
							</span>
							</label>
						</div>
						<div class="terms__content">여러분을 환영합니다. 울타리 서비스 및 제품(이하
							‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 울타리 서비스의 이용과 관련하여 울타리 서비스를 제공하는
							울타리 주식회사(이하 ‘울타리’)와 이를 이용하는 울타리 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를
							설명하며, 아울러 여러분의 울타리 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다. 울타리 서비스를
							이용하시거나 울타리 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로,
							잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.</div>
					</li>

					<li class="terms__box">
						<div class="input__check">
							<label for="agree" class="required"> <input
								type="checkbox" name="agree" value="1" required> <span>개인정보
									수집 및 이용 동의<strong>(필수)</strong>
							</span>
							</label>
						</div>
						<div class="terms__content">개인정보보호법에 따라 울타리 회원가입 신청하시는 분께
							수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시
							불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.1. 수집하는 개인정보 이용자는
							회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다.
							이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우,
							네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</div>
					</li>
				</ul>
				</dr>
			</div>
		</div>
	</div>
	<div class="next_support_next_page">
		<input type="submit" value="다음단계"> <input type="reset"
			value="취소하기">
	</div>
</div>
</div>
</form>
</body>
</html>