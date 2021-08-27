<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
   type="text/javascript" charset="UTF-8"></script>
<script>
$.post("member_findid.woo",{
   name : name.val(),
   email : email.val()
},Function(data){
   alert(eval(data).result);
});
</script>
<html>
<body class="modal_body">
   <script>
      function my_check(){
            alert("${msg}");
         };
      <c:if test="${not empty msg}">
      my_check();
      </c:if>
      </script>
   <%@ include file="../index.jsp"%>
   <a class="modal-open-btn" id="modal-open-btn">Login</a>
   <div class="modal-wrapper">
      <div class="modal-box find">
         <button id="modal-close-btn" class="modal-close-btn">
            <svg xmlns="http://www.w3.org/2000/svg"xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"id="Capa_1" x="0px" y="0px" viewBox="0 0 52.001 52.001"style="enable-background: new 0 0 52.001 52.001;"xml:space="preserve"><g><g><path style="fill:#030104;"d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486    c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757    c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485    c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0    C50.086,47.9,50.086,44.101,47.743,41.758z" /></g> </g><g></g><g></g><g></g><g></g> <g></g> <g></g> <g></g> <g></g><g> </g><g> </g> <g></g><g> </g> <g></g> <g> </g> <g>  </g>  </svg>
         </button>
         <div class="title_find_menu">
            <h3 class="title_find_menu_id">아이디 찾기</h3>
         </div>
         <div class="menu_choice_box">
            <ul class="menu_choice_box_op">
               <li class="menu_choice_box_id"
                  style="background: rgba(185, 108, 108, 0.5);"><a>아이디 찾기</a></li>
               <li class="menu_choice_box_pw"><a
                  href="${pageContext.request.contextPath}/findpw.woo"> 비밀번호 찾기
               </a></li>
            </ul>
         </div>
         <form action="member_findid.woo" method="post">
            <div class="menu_id_box" id="input_box">
               <div class="menu_id_box_content">
                  <br> <input id="name" class="txt_name" name="name"
                     placeholder="이름"> <br> <input id="email"
                     class="txt_email" placeholder="이메일" name="email"> <br>
               </div>
            </div>
            <div class="box_find">
               <input class="find_id_btn" type="submit" value="아이디 찾기">
            </div>
         </form>
      </div>
   </div>
   <script>
        const modalCloseBtn = document.getElementById("modal-close-btn");
        const modalWrapper = document.querySelector(".modal-wrapper");
         console.log(modalWrapper.style);
            modalWrapper.style.display = "flex";
        modalCloseBtn.addEventListener("click", () => {
            modalWrapper.style.display = "none";
        });
    </script>
</body>
</html>