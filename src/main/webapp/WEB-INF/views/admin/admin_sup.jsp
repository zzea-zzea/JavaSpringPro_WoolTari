<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<body>
   <%@ include file="../common/_header.jsp"%>
   <form action="admin_sup.woo">
      <input type="hidden" name="mbId" value="${mbPKId}">
      <main class="childcare_main admin">
         <div class="childcare_box admin ma">
            <div class="side_bar ad">
               <ul>
                 	<li class="side_bar_content mypage"><a  href="${pageContext.request.contextPath}/admin_mem.woo?">회원 통계</a></li>
                 	<li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/admin_cen.woo?">시설 통계</a></li>
                 	<li class="side_bar_content mypage"><a  href="${pageContext.request.contextPath}/admin_boa.woo?">게시글 통계</a></li>
                 	<li class="side_bar_content mypage on"><a  href="${pageContext.request.contextPath}/admin_sup.woo?">후원 통계</a></li>
               </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>후원 통계</h2>
                  </div>
                  <div class="childcare_content my">
                     <div class="table-wrap">
                        <table class="tables myaccordion table-hover" id="accordion">
                              <% int i = 1; %>
                             <c:if test="${empty SpList}">
									<h4>회원이 현재 하나도 없네요!</h4>
							</c:if>
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
								<c:if test="${not empty SpList}">
								<c:forEach var="sp" items="${SpList}" varStatus="vs">
                              <tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
                                 <th scope="row"><%= i++ %></th>
                                 <td>무통장입금</td>
                                 <td><c:if test="${sp.supportCenterType eq 1}">한부모 가정</c:if>
                                 <c:if test="${sp.supportCenterType eq 2}">미혼모 시설</c:if>
                                 <c:if test="${sp.supportCenterType eq 3}">법인 재단</c:if></td>
                                 <td><c:out value="${sp.price}"/>원</td>
                                 <td><fmt:formatDate value="${sp.supportDate}" pattern="yyyy년 MM월 dd일"/></td>
                              </tr>
                              </c:forEach>
                              </c:if>
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