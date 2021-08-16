<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<body>
<c:forEach var="ct" items="${userCtList}" varStatus="vs">
<script>
$(document).ready(function() {
   $(".${ct.board_index}").click(
         function() {
            $("#${ct.board_index}").toggle();
            }
         )
         $(".${ct.board_index}").trigger("click");
   
         });
</script>
</c:forEach>
   <%@ include file="../common/_header.jsp"%>
      <main class="childcare_main my">
         <div class="childcare_box myboa ma">
            <div class="side_bar my">
               <ul>
                  <li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage.woo?mbId=${mbPKId}">회원 정보</a></li>
                  <li class="side_bar_content mypage"><a href="${pageContext.request.contextPath}/mypage_sup.woo?mbId=${mbPKId}">후원 내역조회</a></li>
                  <li class="side_bar_content mypage on"><a href="${pageContext.request.contextPath}/mypage_boa.woo?mbId=${mbPKId}">내 게시글 조회</a></li>
               </ul>
            </div>
            <div class="info_content">
               <section class="childcare_section">
                  <div class="childcare_section_title">
                     <h2>내 게시글 조회</h2>
                     <span>게시글 조회는 이곳을 통해 확인해 주세요!</span>
                  </div>
                  <c:if test="${not empty userCtList}">
                  <div class="childcare_content my">
                     <div class="table-wrap">
                        <table class="tables myaccordion table-hover" id="accordion">
                           <thead>
                              <tr>
                                 <th>#</th>
                                 <th>글제목</th>
                                 <th>카테고리</th>
                                 <th>날짜</th>
                                 <th>조회하기</th>
                              </tr>
                           </thead>
                           <tbody>
                           <% int i = 1; %>   
                           <c:forEach var="ct" items="${userCtList}" varStatus="vs">
                              <tr data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="cummunity">
                                 <th scope="row"><%= i++ %></th>
                                 <td class="${ct.board_index}"><c:out value="${ct.title}"/></td>
                                 <td class="${ct.board_index}"><c:if test="${ct.cate eq 1}">일상</c:if>
                                 <c:if test="${ct.cate eq 2}">지원정보</c:if>
                                 <c:if test="${ct.cate eq 3}">병원정보</c:if>
                                 <c:if test="${ct.cate eq 4}">시설</c:if>
                                 <c:if test="${ct.cate eq 5}">육아정보</c:if>
                                 <c:if test="${ct.cate eq 6}">무료나눔</c:if>
                                 <td class="${ct.board_index}"><fmt:formatDate value="${ct.write_date}" pattern="yyyy년 MM월 dd일" /></td>
                                 <c:if test="${not empty mbLoginName}">
                                 <td><a class="btn_selected_gosite" href="${pageContext.request.contextPath}/content_view.woo?atId=${ct.board_index}">조회 하러 가기</a></td>
                                    </c:if>
                              </tr>
                              <tr>
                                 <td colspan="6" id="${ct.board_index}" class="collapse show acc" data-parent="#accordion">
                                    <p><c:out value="${ct.content}" /></p>
                                 </td>
                              </tr>
                              </c:forEach>
                           </tbody>
                        </table>
                     </div>
                  </div>
                  </c:if>
                  <c:if test="${empty userCtList}">
              		    <br>
                     <h3>&nbsp;&nbsp;&nbsp;&nbsp;게시글이 하나도 없습니다.</h3>
                     <br>
                     <a href="${pageContext.request.contextPath}/content.woo">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;게시글 페이지로 가기</a>
                  </c:if>
               </section>
            </div>
         </div>
      </main>
   <%--    <%@ include file="./common/_footer.jsp"%> --%>
   <%@ include file="../common/_script.jsp"%>
</body>
</html>