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
                  msg = '<font color=red style=font-size:12px;>이미 사용중인 아이디입니다.';

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
               $('#idmsg').html('<i>' + msg + '</i>');

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
                  msg = '<font color=red style=font-size:12px;>이미 사용중인 닉네임입니다.';

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
               //                var valemail2 = $('#email2').val();

               if (valId == null || valId == undefined || valId == "") {
                  alert('아이디를 입력해주세요.');
                  $('#id').focus();
                  return;
               }
               if ($('.id_input').attr("check_result") == "fail") {
                  alert('아이디 중복확인을 해주세요');
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
                  alert('아이디 중복확인을 해주세요');
                  $('.nick_input').focus();
                  return false;
               }

               if (valPw == null || valPw == undefined || valPw == "") {
                  alert('비밀번호를 입력해주세요.');
                  $('#pw').focus();
                  return;
               }
               if (valPw2 == null || valPw2 == undefined || valPw2 == "") {
                  alert('비밀번호 확인을 입력해주세요.');
                  $('#pw2').focus();
                  return;
               }
               //          if(valPw != valPw2){ alert('비밀번호와 비밀번호 확인이 같지 않습니다.'); $('#pw').val(""); $('#pw2').val(""); $('#pw').focus(); return;}
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
               //                if (valemail2 == null || valemail2 == undefined
               //                      || valemail2 == "") {
               //                   alert('이메일을 입력해주세요.');
               //                   $('#email2').focus();
               //                   return;
               //                }
               $('#sign').submit();

            });

   })
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

      $("#name").keyup(function(event) {

         if (!(event.keyCode >= 37 && event.keyCode <= 40)) {

            var inputVal = $(this).val();

            $(this).val(inputVal.replace(/[a-z0-9]/gi, ''));

         }

      });

      
      
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
      

   });
   

   function chkPW() {
      var reg = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,30}$/;

      var pw = $("#pw").val();
      var pw2 = $("#pw2").val();

      if (false === reg.test(pw)) {
         document.getElementById("pw_msg").innerHTML = "*숫자,특수,영대소문자 조합 필수입니다.";
      } else {
         document.getElementById("pw_msg").innerHTML = "<font color=blue>비밀번호 사용 가능</font>";
      }

   }
   function atPW() {
      var pw = $("#pw").val();
      var pw2 = $("#pw2").val();

      if (pw != pw2) {
         document.getElementById("pw_ok").innerHTML = "<font color=red >비밀번호가 일치하지 않습니다.</font>";
         return false;
      } else {
         document.getElementById("pw_ok").innerHTML = "<font color=blue >비밀번호가 일치합니다.</font>";
         return true;
      }
   }
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
                           check_result="fail" value="${empty param.id ? '': param.id}" maxlength="12">
                           <span id="idmsg"></span>
                           <button type="button" id="idCheck" class="id_chack">중복확인</button></td>
                     </tr>
                     <tr>
                        <td>닉네임</td>
                        <td><input id="nick" type="text" name="nickname"
                           class="nick_input" check_result="fail"
                           value="${empty param.nickname ? '': param.nickname}" maxlength="10"><span
                           id="nickmsg"></span>
                           <button type="button" id="nickCheck">중복확인</button></td>
                     </tr>
                     <tr>
                        <td>비밀번호</td>
                        <td><input id="pw" type="password" name="pw"
                           onkeyup="chkPW();"> <span id="pw_msg"></span></td>
                     </tr>
                     <tr>
                        <td>비밀번호 확인</td>
                        <td><input id="pw2" type="password" name="pw2"
                           onkeyup="atPW();"> <span id="pw_ok"></span></td>
                     </tr>
                     <tr>
                        <td>이름</td>
                        <td><input id="name" type="text" name="name" maxlength="4" onkeyup="this.value=this.value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g;);"><span>* 이름은 한글만 가능합니다.</span></td>
                     </tr>
                     <tr>
                        <td>생년월일</td>
                        <td><input id="brith" type="text" name="brith"
                           maxlength="8"><span id="birth_check"
                           onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></span><span>* Ex)19970221</span></td>
                     </tr>
                     <tr id="a">
                        <td>사업자 번호</td>
                        <td><input id="buisness" type="text" name="buisness"
                           onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                           <span>* 숫자만 입력 해주세요.</span></td>
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
                        <td class="emailI"><input type="text" name="email"
                           id="email"></td>
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
   <%--    <%@ include file="./common/_footer.jsp"%> --%>
   <%@ include file="../common/_script.jsp"%>
   <!--    <script type="text/javascript"> -->
   <!-- //       $(document).ready(function() { -->
   <!-- //          $('.selectpicker').selectpicker({ -->
   <!-- //             style : 'btn-info', -->
   <!-- //             size : 4 -->
   <!-- //          }); -->
   <!-- //       }); -->
   <!--    </script> -->


</body>
</html>