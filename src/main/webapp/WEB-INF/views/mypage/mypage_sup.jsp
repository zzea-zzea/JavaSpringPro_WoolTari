<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
   <%@ include file="../common/_header.jsp"%>
      <main class="childcare_main my">
         <div class="childcare_box myboa ma">
            <div class="side_bar my">
               <ul>
                  <li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage.woo?mbId=${mbPKId}">회원 정보</a></li>
                  <li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/mypage_sup.woo?mbId=${mbPKId}">후원 내역조회</a></li>
                  <li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_boa.woo?mbId=${mbPKId}">내 게시글 조회</a></li>
               </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>후원 내역조회</h2>
                     <span>후원 내역 조회는 이곳을 통해 확인해 주세요!</span>
                  </div>
                  <div class="childcare_content my">
                     <div class="table-wrap">
                     <c:if test="${empty userSpList}">
                        <h3>후원 내역이 없습니다.</h3>   
                     </c:if>
                     <c:if test="${not empty userSpList}">         
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
                           <% int i = 1; %>	
                           <c:forEach var="sp" items="${userSpList}" varStatus="vs">
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
                           </tbody>
                        </table>
                     </c:if>
                     </div>
                  </div>
               </section>
            </div>
         </div>
      </main>
   <%@ include file="../common/_script.jsp"%>
</body>
</html>