<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<body>
   <%@ include file="../common/_header.jsp"%>
   <form action="admin_cen.woo">
      <input type="hidden" name="mbId" value="${mbPKId}">
      <main class="childcare_main my">
         <div class="childcare_box myboa ma">
            <div class="side_bar my">
               <ul>
                 	<li class="side_bar_content mypage">
                  		<a  href="${pageContext.request.contextPath}/admin_mem.woo?">회원 통계</a>
					</li>
                 	<li class="side_bar_content mypage on">
                  		<a  href="${pageContext.request.contextPath}/admin_cen.woo?">시설 통계</a>
					</li>
                 	<li class="side_bar_content mypage ">
                  		<a  href="${pageContext.request.contextPath}/admin_boa.woo?">게시글 통계</a>
					</li>
                 	<li class="side_bar_content mypage ">
                  		<a  href="${pageContext.request.contextPath}/admin_sup.woo?">후원 통계</a>
					</li>
               </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>시설 통계</h2>
                     <span>후원 내역 조회는 이곳을 통해 확인해 주세요!</span>
                  </div>
                  <div class="childcare_content my">
                     <div class="table-wrap">
                        <table class="tables myaccordion table-hover" id="accordion">
                           <thead>
                              <tr>
                                 <th>NO.</th>
                                 <th>결제 방법</th>
                                 <th>후원처</th>
                                 <th>후원금액</th>
                                 <th>후원 날짜</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
                                 <th scope="row"></th>
                                 <td>무통장입금</td>
                                 <td>무통장입금</td>
                                 <td>무통장입금</td>
                                 <td>한부모 가정</td>
                              </tr>
                           </tbody>
                        </table>
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