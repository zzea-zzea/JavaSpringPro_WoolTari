<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>

$(function() {
    $('#find_btn').click(
          function() {
        	  var valPw = $('#password').val();
              var valPw2 = $('#password1').val();	  
              var pattern1 = /[0-9]/;
              var pattern2 = /[a-zA-Z]/;
              var pattern3 = /[~!@\#$%<>^&*]/; 

              
               if (valPw != valPw2){
            	   $('#pw2').focus();
            	   return;
               }
               if(!pattern1.test(valPw)||!pattern2.test(valPw)||!pattern3.test(valPw)){
            	   alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
				   $('#pw').focus();
                   return false;
               }
 
               $('#newpw').submit();

               
          
});

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




<html>
<body class="modal_body">



	<%@ include file="../index.jsp"%>



	<div class="modal-wrapper">

		<div class="modal-box ch">


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
                        
                    </svg>
			</button>
			<div class="title_find_menu">
				<h3 class="title_find_menu_new_pw">새 비밀번호 변경</h3>
			</div>

			<form action="pw_new.woo" method="post" id="newpw">
				<div class="menu_new_pw_box">
					<div class="menu_new_pw_box_content">
						<input type="hidden" name="id" value="${id}"> <input
							type="hidden" name="email" value="${email}"> <input
							class="box_txtpw" placeholder="새 비밀번호" type="password"
							id="password" name="pw" minlength ="8"  maxlength="15">
						<div class="menu_new_span_box">
							<span id="pw_msg" class="small_text">*숫자,특수문자,영대소문자 조합 필수</span>
							<br>
						</div>

						<br> <input class="box_txtpw_re" placeholder="새 비밀번호 확인"
							type="password" id="password1"> <br>
						<div class="menu_new2_span_box">
							<span class="newpw_span_msg_font" id="pw_at_msg"
								style="color: red; font-size: 12px;">비밀번호가 일치하지 않습니다.</span> <span
								class="newpw_span_msg_font" id="pw_at_msg1"
								style="color: blue; font-size: 12px;">비밀번호가 일치합니다.</span>

						</div>




					</div>
				</div>
				<div class="box_find">
					<a type="button" class="find_new_pw_btn" id="find_btn">비밀번호 변경</a>
				</div>
			</form>
		</div>
	</div>
	<script>
      
//          const modalOpenBtn = document.getElementById("modal-open-btn");
        const modalCloseBtn = document.getElementById("modal-close-btn");
        const modalWrapper = document.querySelector(".modal-wrapper");

         console.log(modalWrapper.style);

//          modalOpenBtn.addEventListener("click", () => {
            modalWrapper.style.display = "flex";
//          });

        modalCloseBtn.addEventListener("click", () => {
            modalWrapper.style.display = "none";
        });
        

        function Change() {
            var key = selectBox.value;
            if (key == 2) {
                document.all["div1"].style.display = "block";

                var el = document.getElementsByName('email_injeung');
                for (var i = 0; i < el.length; i++) {
                    el[i].value = '';
                }
                document.getElementById("user_email_1").style.display = "none";


            } else
                document.all["div1"].style.display = "none";
            var el = document.getElementsByName('email_injeung');
            for (var i = 0; i < el.length; i++) {
                el[i].value = '';
            }
            document.getElementById("user_email_1").style.display = "none";
        }

        
        function id_show() {
            document.getElementById("user_email_1").style.display = "block";
        }
        
        
        function pw_show() {
            document.getElementById("user_email_2").style.display = "block";
        }
        
        
        
        
   
        
        
    </script>
</body>

</html>