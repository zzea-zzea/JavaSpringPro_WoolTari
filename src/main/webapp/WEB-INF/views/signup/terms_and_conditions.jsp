<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/terms_and_conditions.css">


<body>
   
   <%@ include file="../index.jsp" %>
   
        <div class="modal-wrapper">
            <div class="modal-wrapper-box">
                <button id="modal-close-btn" class="modal-close-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewbox="0 0 52.001 52.001" style="enable-background:new 0 0 52.001 52.001;" xml:space="preserve">
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
                    </svg>
                </button>

        
  

  <script type="text/javascript">
      function agree() { 
          var chkbox = document.getElementsByName('agree');

       var chk = false; 
       
for(var i=0 ; i<chkbox.length ; i++) { 
    if(chkbox[1].checked) {
        chk = true; 
    } else {  chk = false; 
           }
} 
       if(chk) { 
           alert("모든 약관에 동의함.");
           location.replace('sign_up.jsp');
       } else { alert("필수 약관에 동의해 주세요.") 
               return false;
              } 
      }


      
    </script>
                
<body>

    <div class="wrap">
        <div class="logo">
            <h1><b>이용약관</b></h1>
        </div>
        <div class="contents">
            <form action="/" method="POST" id="form__wrap">
                <div class="terms__check__all">
                <div class= "all_agree">
                   
                    <label for="agree_all" class="all_ck">
                        <input type="checkbox"  name="agree_all" id="agree_all">
                        <span class="checked_all">모두 동의합니다</span>
                    </label>
   					</div> 
                <dr>
                
                    <script>
                        // 동의 모두선택 / 해제
                        const agreeChkAll = document.querySelector('input[name=agree_all]');
                        agreeChkAll.addEventListener('change', (e) => {
                            let agreeChk = document.querySelectorAll('input[name=agree]');
                            for (let i = 0; i < agreeChk.length; i++) {
                                agreeChk[i].checked = e.target.checked;
                            }
                        });

                    </script>
                    <ul class="terms__list">
                        <li class="terms__box">
                            <div class="input__check">
                                <label for="agree" class ="required">
                                    <input type="checkbox" name="agree" value="1" required
                                           >
                                    <span>이용약관 동의</span>
                                </label>
                            </div>
                            <div class="terms__content">
                                여러분을 환영합니다. 울타리 서비스 및 제품(이하 ‘서비스’)을 이용해
                                주셔서 감사합니다. 본 약관은 다양한 울타리 서비스의 이용과 관련하여
                                울타리 서비스를 제공하는 울타리 주식회사(이하 ‘울타리’)와 이를 이용하는
                                울타리 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며,
                                아울러 여러분의 울타리 서비스 이용에 도움이 될 수 있는 유익한
                                정보를 포함하고 있습니다. 울타리 서비스를 이용하시거나 울타리 서비스
                                회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을
                                확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐
                                주시기 바랍니다.
                            </div>
                        </li>
                        
                                      <li class="terms__box">
                            <div class="input__check">
                            <br>
                                <label for="agree" class ="required">
                                    <input type="checkbox" name="agree" value="1"  
                                           required>
                                      
                                    <span>개인정보 수집 및 이용 동의</span>
                                </label>
                            </div>
                            <div class="terms__content">
                                개인정보보호법에 따라 울타리 회원가입 신청하시는 분께 수집하는
                                개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및
                                이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내
                                드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.1. 수집하는
                                개인정보 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등
                                대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다.
                                이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제
                                서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스
                                이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                            </div>
                        </li>
                        
                        <li class="terms__box">
                            <div class="input__check">
                                <label for="agree">
                                    <br>
                                    <input type="checkbox" name="agree" value="2">
                                    <span>이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong></span>
                                </label>
                            </div>
                            <div class="terms__content">
                                울타리에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화(울타리
                                알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도
                                회원 체계로 운영하거나 울타리 가입 이후 추가 가입하여 이용하는
                                서비스 등)의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수
                                있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를
                                받습니다.
                            </div>
                        </li>
                    </ul>
                    </dr>
                </div>


            </form>
             <button type="submit" class="next-button" onclick="agree();"
                    >OK</button>
        </div>
        
    </div>
</body>

            </div>
        </div>
    
   


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
</body></html>