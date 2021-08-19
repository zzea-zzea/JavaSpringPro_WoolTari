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
                  </div>
                  <div class="childcare_content my">
                     <div class="table-wrap">
                        <table class="tables myaccordion table-hover" id="accordion">
                           	<%int i = 1; %>
                           <c:if test="${empty ctList}">
									<h4>게시글이 현재 하나도 없네요!</h4>
								</c:if>
                           <thead>
                              <tr>
                                 <th>NO.</th>
                                 <th>위치</th>
                                 <th>이름</th>
                                 <th>전화번호</th>
                                 <th>주소</th>
                              </tr>
                           </thead>
                           <tbody>
								<c:if test="${not empty LoList}">
								<c:forEach var="lo" items="${LoList}" varStatus="vs">
                              <tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="collapsed">
                                 <th scope="row"><%= i++ %></th>
                                 <td><c:out value="${lo.local_si}"/></td>
                                 <td><c:out value="${lo.facility_name}"/></td>
                                 <td><c:out value="${lo.phone_num}"/></td>
                                 <td><c:out value="${lo.facility_add}"/></td>
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