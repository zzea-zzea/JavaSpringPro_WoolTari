<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>
function del(mbId) {
   var chk = confirm("정말 탈퇴하시겠습니까?");
   if (chk) {
      location.href='Deletemypage.woo?mbId='+ mbId;
   }
}
</script>
<body>
   <%@ include file="../common/_header.jsp"%>
      <main class="childcare_main my">
         <div class="childcare_box myboa ma">
            <div class="side_bar my">
            <ul>
               <li class="side_bar_content mypage"><a href="#" onclick="del(${member.memberIndex})">회원 탈퇴</a></li>
            </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>회원 정보 수정</h2>
                     <span>변경 하실 회원정보는 여기서 변경 해주세요!</span>
                  </div>
                  <div class="childcare_content my">
                     <div class="childcare_content_menu mypage">
                     <form method="post" action="member_update.woo">
                        <input type="hidden" name="memberIndex" value="${member.memberIndex}">
                        <input type="hidden" name="id" value="${member.id}"> 
                        <table class="table">
                           <tbody>
                              <tr>
                                 <td>이름</td>
                                 <td><input type="text" id='name' name='name'size='20' required></td>
                              </tr>
                              <tr>
                                 <td>휴대폰 번호</td>
                                 <td class="phone_si">
                                    <input name="phone1" type="text" maxlength="3">&nbsp;-&nbsp;
                                    <input name="phone2" type="text" maxlength="4">&nbsp;-&nbsp;
                                    <input name="phone3" type="text" maxlength="4">
                                 </td>
                              </tr>
                              <tr>
                                 <td>별명</td>
                                 <td><input type="text" id="nickName" name="nickName"></td>
                              </tr>
                              <tr class="danger">
                                 <td>새 비밀번호</td>
                                 <td><input type="password" maxlength="20" name="pw" required="required"></td>
                              </tr>
                              <tr class="danger">
                                 <td>비밀번호 확인</td>
                                 <td><input type="password" maxlength="20" required="required"></td>
                              </tr>
                           </tbody>
                        </table>
                        <button class="edit_btn">수정 완료</button>
                        </form>
                     </div>
                  </div>
               </section>
            </div>
         </div>
      </main>
   <%@ include file="../common/_script.jsp"%>
</body>
</html>