<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
   <%@ include file="../common/_header.jsp"%>
   <form action="signUp.woo">
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
                        <td>
                           <input type="radio" name="member_type" checked>&nbsp;<label>개인</label>&nbsp;&nbsp;
                           <input type="radio" name="member_type">&nbsp;<label>법인</label>
                        </td>
                     </tr>
                     <tr>
                        <td>아이디</td>
                        <td><input type="text" ><button>중복확인</button></td>
                     </tr>
                     <tr>
                        <td>닉네임</td>
                        <td><input type="text" ><button>중복확인</button></td>
                     </tr>
                     <tr>
                        <td>비밀번호</td>
                        <td><input type="text" > <span>* 숫자,특수,영대소문자 조합 필수입니다.</span></td>
                     </tr>
                     <tr>
                        <td>비밀번호 확인</td>
                        <td><input type="text"> <span>* 일치 합니다</span></td>
                     </tr>
                     <tr>
                        <td>이름</td>
                        <td><input type="text" ></td>
                     </tr>
                     <tr>
                        <td>생년월일</td>
                        <td><input type="date"></td>
                     </tr>
                     <tr>
                        <td>사업자 번호</td>
                        <td><input type="text" > <span>* 숫자만 입력 해주세요.</span></td>
                     </tr>
                     <tr>
                        <td>전화번호</td>
                        <td class="phoneN"><input type="text" maxlength="3"><span> - </span><input type="text" maxlength="4"><span> - </span><input type="text" maxlength="3"></td>
                     </tr>
                     <tr>
                        <td>성별</td>
                        <td>
                           <input type="radio" name="gender_type" checked>&nbsp;<label>여</label>&nbsp;&nbsp;
                           <input type="radio" name="gender_type">&nbsp;<label>남</label>
                        </td>
                     </tr>
                     <tr>
                        <td>이메일</td>
                        <td class="emailI">
                           <input type="text"><span> @ </span><input type="text" >
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <div class="nextbtn"><a  href="${pageContext.request.contextPath}/signUp_ok.woo">입력완료</a></div>
         </div>
      </main>
   </form>
   <%--    <%@ include file="./common/_footer.jsp"%> --%>
   <%@ include file="../common/_script.jsp"%>
   <script type="text/javascript">
      $(document).ready(function() {
         $('.selectpicker').selectpicker({
            style : 'btn-info',
            size : 4
         });
      });
   </script>
</body>
</html>