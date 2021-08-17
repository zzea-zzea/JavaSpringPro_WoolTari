<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>









<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src='https://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>

<script type="text/javascript">
   var CTX = '${pageContext.request.contextPath}';
   $(document).ready(function() {
      $('#idCheck').on("click", function() {
         var login = $('input[name=id]').val();
         console.log(login);
         var tUrl = CTX + '/member_dupcheck.woo';
         $.ajax({
            type : 'get',
            url : tUrl,
            data : "id=" + login,

            success : function(res) {

               console.log("ajax: " + res);

               var msg = "";

               $('#idmsg').removeClass('yes');
               $('#idmsg').removeClass('no');
               $('#idmsg').removeClass('error');
               switch (res) {
               case "yes":
                  msg = '<font color=red style=font-size:12px;>이미 사용중인 아이디입니다.</font>';

                  break;
               case "no":
                  msg = '<font color=blue style=font-size:12px;>사용 가능한 아이디입니다.</font>';
                  $('.id_input').attr("check_result", "success");
                  break;
               case "error":
                  msg = "요청파라미터 에러! or DB관련 에러!";
                  break;
               default:
                  msg = "예외 발생!!!!!";

               }
               $('#idmsg').addClass(res);
               $('#idmsg').html('<a>' + msg + '</a>');

            }
         });
      });

      $('#nickCheck').on("click", function() {
         var login = $('input[name=nickname]').val();
         console.log(login);
         var tUrl = CTX + '/member_nick_dupcheck.woo';
         $.ajax({
            type : 'get',
            url : tUrl,
            data : "nickname=" + login,

            success : function(res) {

               console.log("ajax: " + res);

               var msg = "";

               $('#nickmsg').removeClass('yes');
               $('#nickmsg').removeClass('no');
               $('#nickmsg').removeClass('error');
               switch (res) {
               case "yes":
                  msg = '<font color=red style=font-size:12px;>이미 사용중인 닉네임입니다.</font>';

                  break;
               case "no":
                  msg = '<font color=blue style=font-size:12px;>사용 가능한 닉네임입니다.</font>';
                  $('.nick_input').attr("check_result", "success");
                  break;
               case "error":
                  msg = "요청파라미터 에러! or DB관련 에러!";
                  break;
               default:
                  msg = "예외 발생!!!!!";

               }
               $('#nickmsg').addClass(res);
               $('#nickmsg').html('<a> ' + msg + '</a>');

            }
         });
      });

      $('#emailCheck').on("click", function() {
          var login = $('input[name=email]').val();
          console.log(login);
          var tUrl = CTX + '/member_email_dupcheck.woo';
          $.ajax({
             type : 'get',
             url : tUrl,
             data : "email=" + login,

             success : function(res) {

                console.log("ajax: " + res);

                var msg = "";

                $('#emailmsg').removeClass('yes');
                $('#emailmsg').removeClass('no');
                $('#emailmsg').removeClass('error');
                switch (res) {
                case "yes":
                   msg = '<font color=red style=font-size:12px;>이미 사용중인 이메일입니다.</font>';

                   break;
                case "no":
                   msg = '<font color=blue style=font-size:12px;>사용 가능한 이메일입니다.</font>';
                   $('.email_input').attr("check_result", "success");
                   break;
                case "error":
                   msg = "요청파라미터 에러! or DB관련 에러!";
                   break;
                default:
                   msg = "예외 발생!!!!!";

                }
                $('#emailmsg').addClass(res);
                $('#emailmsg').html('<a> ' + msg + '</a>');

             }
          });
       });
      
   });

   $(function() {
      $('#btn').click(
            function() {
               var valId = $('#id').val();
               var valnick = $('#nick').val();
               var valPw = $('#pw').val();
               var valPw2 = $('#pw2').val();
               var valname = $('#name').val();
               var valbrith = $('#brith').val();
               var valbuisness = $('#buisness').val();
               var valphone1 = $('#phone1').val();
               var valphone2 = $('#phone2').val();
               var valphone3 = $('#phone3').val();
               var valemail = $('#email').val();
               var pattern1 = /[0-9]/;
               var pattern2 = /[a-zA-Z]/;
               var pattern3 = /[~!@\#$%<>^&*]/; 
              
               
               if (valId == null || valId == undefined || valId == "") {
                  alert('아이디를 입력해주세요.');
                  $('#id').focus();
                  return;
               }
               if ($('.id_input').attr("check_result") == "fail") {
                  alert('아이디 중복확인을 해주세요.');
                  $('.id_input').focus();
                  return false;
               }

               if (valnick == null || valnick == undefined
                     || valnick == "") {
                  alert('닉네임을 입력해주세요.');
                  $('#nick').focus();
                  return;
               }
               

               if ($('.nick_input').attr("check_result") == "fail") {
                  alert('닉네임 중복확인을 해주세요.');
                  $('.nick_input').focus();
                  return false;
               }

               if (valPw == null || valPw == undefined || valPw == "") {
                  alert('비밀번호를 입력해주세요.');
                  $('#pw').focus();
                  return;
               }
               
               if(!pattern1.test(valPw)||!pattern2.test(valPw)||!pattern3.test(valPw)){
            	   alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
				   $('#pw').focus();
                   return false;
               }
              
               if (valPw2 == null || valPw2 == undefined || valPw2 == "") {
                  alert('비밀번호 확인을 입력해주세요.');
                  $('#pw2').focus();
                  return;
               }
               if(valPw != valPw2 ){
            	   alert('비밀번호와 새비밀번호가 일치하는지 확인해주세요.')
            	   $('#pw').focus();
            	   return;
               }
               if (valname == null || valname == undefined
                     || valname == "") {
                  alert('이름을 입력해주세요.');
                  $('#name').focus();
                  return;
               }
               if (valbrith == null || valbrith == undefined
                     || valbrith == "") {
                  alert('생일을 입력해주세요.');
                  $('#brith').focus();
                  return;
               }
               if ($("input[name=isMember]:checked").val() == "2") {
                  if (valbuisness = undefined || valbuisness == "") {
                     alert('사업자 번호를 입력해주세요.');
                     $('#buisness').focus();
                     return;
                  }
               }
               if (valphone1 == null || valphone1 == undefined
                     || valphone1 == "") {
                  alert('전화번호를 입력해주세요.');
                  $('#phone1').focus();
                  return;
               }
               if (valphone2 == null || valphone2 == undefined
                     || valphone2 == "") {
                  alert('전화번호를 입력해주세요.');
                  $('#phone2').focus();
                  return;
               }
               if (valphone3 == null || valphone3 == undefined
                     || valphone3 == "") {
                  alert('전화번호를 입력해주세요.');
                  $('#phone3').focus();
                  return;
               }
               if (valemail == null || valemail == undefined
                     || valemail == "") {
                  alert('이메일을 입력해주세요.');
                  $('#email').focus();
                  return;
               }
               if ($('.email_input').attr("check_result") == "fail") {
                   alert('이메일 중복확인을 해주세요.');
                   $('.email_input').focus();
                   return false;
                }
              
               
               $('#sign').submit();

            });

   });
   $(document).ready(function() {

      $("input:radio[name=isMember]").click(function() {
         if ($("input[name=isMember]:checked").val() == "1") {
            $("#a").hide();
         }
      })
      $("input:radio[name=isMember]").click(function() {
         if ($("input[name=isMember]:checked").val() == "2") {
            $("#a").show();
         }
      });
      $("#click").trigger("click");
  
      
      $('#email').keyup(function(event) {
         if (!(event.keyCode >= 37 && event.keyCode <= 40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^a-z0-9@_.-]/gi, ''));
         }
      });
      
      $("#id").keyup(function(event){
            if (!(event.keyCode >=37 && event.keyCode<=40)) {
                var inputVal = $(this).val();
                $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
            }
        });
      
      
      $('#name').keyup(function() {
  		var inputVal = $(this).val();
  		 $(this).val((inputVal.replace(/[[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}=;,./ ]/g,'')));
  	});
	
   });
   
   

   
   
   $(function() {
	      $("#pw_at_msg").hide();
	      $("#pw_at_msg1").hide();
	      $("input").keyup(function() {
	         var pwd1 = $('#pw').val();
	         var pwd2 = $('#pw2').val();
	         if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	               $("#pw_at_msg").hide();
	               $("#pw_at_msg1").show();
	            } else {
	               $("#pw_at_msg").show();
	               $("#pw_at_msg1").hide();
	            }
	         }
	      });
	   });
</script>
<script type="text/javascript">
   function keycheck1(x) {
      if (x.value.length == 3) {
         phone2.focus();
      }
   }

   function keycheck2(x) {
      if (x.value.length == 4) {
         phone3.focus();
      }
   }
   

</script>

<body>
	
	<%@ include file="../common/_header.jsp"%>
	<form action="member_signUp.woo" method="post" class="form" id="sign">
		<main class="signUp_main">
			<div class="signUp_box  ma">
				<div class="signUp_content_title">
					<h2>회원가입</h2>
					<span>울타리의 회원일시 후원과 게시판을 이용하실수 있습니다.</span>
				</div>
				<div class="signUp_content_benefits">
					<div class="signUp_content_benefits_ti">
						<h3>회원정보 입력</h3>
					</div>
					<table class="table ">
						<tbody>
							<tr>
								<td>후원인구분</td>
								<td><input type="radio" id="click" name="isMember"
									value="1" checked>&nbsp;<label>개인</label>&nbsp;&nbsp; <input
									type="radio" name="isMember" value="2">&nbsp;<label>법인</label>
								</td>
							</tr>
							<tr>
								<td>아이디</td>
								<td><input id="id" type="text" name="id" class="id_input"
									check_result="fail" value="${empty param.id ? '': param.id}"
									maxlength="12"> <span id="idmsg"></span>
									<button type="button" id="idCheck" class="id_chack">중복확인</button></td>
									
							</tr>
							<tr>
								<td>닉네임</td>
								<td><input id="nick" type="text" name="nickname"
									class="nick_input" check_result="fail"
									value="${empty param.nickname ? '': param.nickname}"
									maxlength="10"><span id="nickmsg"></span>
									<button type="button" id="nickCheck">중복확인</button></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input id="pw" type="password" name="pw" minlength ="8"  maxlength="15"> <span
									id="pw_msg" style="font-size: 12px;">*숫자,특수,영대소문자 조합
										필수입니다.</span></td>
							</tr>
							<tr>
								<td>비밀번호 확인</td>
								<td><input id="pw2" type="password" name="pw2"> <span
									id="pw_at_msg" style="color: red; font-size: 12px;">비밀번호가
										일치하지 않습니다.</span> <span id="pw_at_msg1"
									style="color: blue; font-size: 12px;">비밀번호가 일치합니다.</span></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input id="name" type="text" name="name" maxlength="4"><span
									style="font-size: 12px;">* 이름은 한글만 가능합니다.</span></td>
							</tr>
							<tr>
								<td>생년월일</td>
								<td><input id="brith" type="text" name="brith"
									maxlength="8"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span
									style="font-size: 12px;">* Ex)19970221</span></td>
							</tr>
							<tr id="a">
								<td>사업자 번호</td>
								<td><input id="buisness" type="text" name="buisness"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
									<span style="font-size: 12px;">* 숫자만 입력 해주세요.</span></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td class="phoneN"><input type="text" maxlength="3"
									name="phone1" id="phone1" onkeypress="keycheck1(this)"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span>
										- </span><input type="text" maxlength="4" name="phone2" id="phone2"
									onkeypress="keycheck2(this)"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span>
										- </span><input type="text" maxlength="4" name="phone3" id="phone3"
									onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
							</tr>
							<tr>
								<td>성별</td>
								<td><input type="radio" name="gender" value="1" checked>&nbsp;<label>여</label>&nbsp;&nbsp;
									<input type="radio" name="gender" value="2">&nbsp;<label>남</label>
								</td>
							</tr>
							<tr>
								<td>이메일</td>
								<td><input type="text" name="email" class="email_input"
									id="email" check_result="fail" value="${empty param.email ? '': param.email}">
									 <span id="emailmsg"></span>
									<button type="button" id="emailCheck">중복확인</button></td>
	
							</tr> 
						</tbody>
					</table>
				</div>
				<div class="nextbtn">
					<a type="button" id="btn">입력완료</a>
				</div>
			</div>
		</main>
	</form>

	<%@ include file="../common/_script.jsp"%>
	


</body>
</html>