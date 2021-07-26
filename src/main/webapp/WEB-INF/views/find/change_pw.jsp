<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/modal.css">
    <link rel="stylesheet" href="../css/find.css">
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script>
        function chkPW() {
            var reg = /^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,}$/;

            var pw = $("#password").val();

            if (false === reg.test(pw)) {
                
                document.getElementById("pw_msg").innerHTML = "비밀번호 형식에 맞지않습니다";
            } else {
                document.getElementById("pw_msg").innerHTML = 
                    "<font color=blue>비밀번호 사용 가능</font>";
                
                
            }

        }
    </script>
    
    <body class="modal_body">
    <%@ include file="../index.jsp" %>
<!--     <h2>모달창만들기</h2> -->
<!--     <button id="modal-open-btn">로그인모달창</button> -->
<!--     <div id="modal-overlay"> -->


        <div class="modal-wrapper">
            <div class="modal-box ch">


                <button id="modal-close-btn" class="modal-close-btn"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 52.001 52.001" style="enable-background:new 0 0 52.001 52.001;" xml:space="preserve">
                        <g>
                            <g>
                                <path style="fill:#030104;" d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486    c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757    c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485    c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0    C50.086,47.9,50.086,44.101,47.743,41.758z" />
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
                    </svg></button>
                <div class="title_find_menu">
                    <h3 class="title_find_menu_new_pw">새 비밀번호 변경</h3>
                </div>

                <div class="menu_new_pw_box">
                    <div class="menu_new_pw_box_content">
                        <input class="menu_new_pw_box_txtpw" placeholder="새 비밀번호" type="password" id="password" onkeyup="chkPW();">
                        <div>
                            <span class="menu_new_pw_box_small_text">*숫자,특수문자,영대소문자 조합 필수</span>
                            <br>
                            <span class="menu_new_pw_box_pw" id="pw_msg" onkeyup="chkPW();"></span>
                        </div>

                        <br>
                        <input class="menu_new_pw_box_txtpw_re" placeholder="새 비밀번호 확인" type="password" id="password1" onkeyup="atPW();">
                        <br>
                        <span class="pw_ch" onkeyup="atPW();" id="pw_at_msg"></span>





                    </div>
                </div>
                <div class="menu_new_pw_btn">
                    <button class="menu_pw_box_new_btn" onclick="chkPW()">비밀번호 변경</button>
                </div>
            </div>
        </div>
<!--     </div> -->

    <script type="text/javascript">
        //      const modalOpenBtn = document.getElementById("modal-open-btn");
        const modalCloseBtn = document.getElementById("modal-close-btn");
        const modalWrapper = document.querySelector(".modal-wrapper");

        //      console.log(modalWrapper.style);

        //      modalOpenBtn.addEventListener("click", () => {
        modalWrapper.style.display = "flex";
        //      });

        modalCloseBtn.addEventListener("click", () => {
            modalWrapper.style.display = "none";
        });

        function atPW() {
            var p1 = document.getElementById('password').value;
            var p2 = document.getElementById('password1').value;
            if (p1 != p2) {
                document.getElementById("pw_at_msg").innerHTML = 
                    "<font color=red >비밀번호가 일치하지 않습니다.</font>";
                return false;
            } else {
                document.getElementById("pw_at_msg").innerHTML = 
                     "<font color=blue >비밀번호가 일치합니다.</font>";
                return true;
            }
        }
    </script>





</body></html>