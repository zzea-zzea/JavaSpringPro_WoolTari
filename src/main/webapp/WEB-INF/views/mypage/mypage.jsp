<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
   $(document).ready(function() {
      var check = "${member.gender}";
      var msg = "";
      switch (check) {
      case "1":
         msg = "여자";
         break;
      case "2":
         msg = "남자";
         break;
      }
      $('#a').text(msg);
      
      $("#retuch_btn").click(function() {
         var pw = $('#password').val();
         var pw2 = $('#password1').val();
         if(pw == "" || pw2 == "") {
             alert("비밀번호 입력해주세요");
         }
         if(pw != "${member.pw}") {
             alert("비밀번호가 틀렸습니다");
         }
      });
   });
   
   $(function() {
      var member = "${member.isMember}";
      if(member == 1) {
         
      }
   });

   $(function() {
      $("#pw_at_msg").hide();
      $("#pw_at_msg1").hide();
      $("input").keyup(function() {
         var pwd1 = $('#password').val();
         var pwd2 = $('#password1').val();
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
<body>
   <%@ include file="../common/_header.jsp"%>
   <form action="mypage_sumit.woo" method="post">
      <input type="hidden" name="mbId" value="${mbPKId}">
      <main class="childcare_main my">
         <div class="childcare_box myboa ma">
            <div class="side_bar my">
               <ul>
                  <li class="side_bar_content mypage on"><a
                     href="${pageContext.request.contextPath}/mypage.woo?mbId=${mbPKId}">회원
                        정보</a></li>
                  <%--                   <li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/retouch_mypage.woo?mbId=${mbPKId}">회원 정보 수정</a></li> --%>
                  <li class="side_bar_content mypage"><a
                     href="${pageContext.request.contextPath}/mypage_sup.woo?mbId=${mbPKId}">후원
                        내역조회</a></li>
                  <li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_boa.woo?mbId=${mbPKId}">내게시글 조회</a></li>
                  
               </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>회원 정보</h2>
                     <c:if test="${member.isMember eq 1}">
                     <span>변경 하실 회원정보는 여기서 변경 해주세요!</span>
                     </c:if>
                     <c:if test="${member.isMember eq 2}">
                     <h3 style="color: green;">사업자는 회원정보 수정이 불가 합니다.</h3>
                     </c:if>
                  </div>
                  <div class="childcare_content my">
                     <div class="childcare_content_menu mypage">
                        <table class="table">
                           <tbody>
                              <tr>
                                 <td>구분</td>
                                 <td>
                                    <c:if test="${member.isMember eq 1}">일반 회원</c:if>
                                    <c:if test="${member.isMember eq 2}">사업자</c:if>
                                 </td>
                              </tr>
                              <tr>
                                 <td>이름</td>
                                 <td><c:out value="${userName}" /></td>
                              </tr>
                              <tr>
                                 <td>전화번호</td>
                                 <td class="phone_si"><c:out value="${phoneNumber}" /></td>
                              </tr>
                              <tr>
                                 <td>성별</td>
                                 <td id="a"></td>
                              </tr>
                              <tr class="success">
                                 <td>생년월일</td>
                                 <td><c:out value="${brithDay}" /></td>
                              </tr>
                              <tr class="danger">
                                 <td>메일주소</td>
                                 <td><c:out value="${member.email}" /></td>
                              </tr>
                              <c:if test="${member.isMember eq 1}">
                              <tr class="danger">
                                 <td>비밀번호</td>
                                 <td><input id="password" type="password" maxlength="20"
                                    name="pw"></td>
                              </tr>
                              <tr class="danger">
                                 <td>비밀번호 확인</td>
                                 <td>
                                    <input id="password1" type="password" maxlength="20"> 
                                    <span id="pw_at_msg"style="color: red">비밀번호 불일치</span> 
                                    <span id="pw_at_msg1"style="color: blue;">비밀번호 일치</span>
                                 </td>
                              </tr>
                              </c:if>
                           </tbody>
                        </table>
                        <c:if test="${member.isMember eq 1}">
                           <button id="retuch_btn" class="edit_btn" type="submit">수정</button>
                        </c:if>
                     </div>
                  </div>
               </section>
            </div>
         </div>
      </main>
   </form>
   <%@ include file="../common/_script.jsp"%>
</body>
</html>