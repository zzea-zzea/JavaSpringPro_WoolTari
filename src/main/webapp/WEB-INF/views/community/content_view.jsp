i<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
   function del(atId) {
      var chk = confirm("정말 삭제하시겠습니까?");
      if (chk) {
         location.href='delete.woo?atId='+${community.board_index};
      }
   }   
   function deletecomment(commentId) {
      var chk = confirm("정말 삭제하시겠습니까?");
      var a  = $("#rm_"+commentId).val();
      if (chk) {
         location.href='Deletecomment.woo?commentId='+ commentId+"&boardIndex="+a;
      }
   }    
   function retouchcomment(commentId) {
      var reply = document.getElementById("reply_show_"+commentId);
      var retouch = document.getElementById("retouch_reply_"+commentId);
      reply.style.display ='none';
      retouch.style.display ='block';
   }
   $(document).ready(function() {
      var check = "${community.cate}";
      var msg = "";
      switch(check) {
      case "1":
         msg = "일상";
         break;
      case "2":
         msg = "지원정보";
         break;
      case "3":
         msg = "병원정보";
         break;
      case "4":
         msg = "시설";
         break;
      case "5":
         msg = "육아정보";
         break;
      case "6":
         msg = "무료나눔";
         break;
      
      }
         $('#a').text(msg);
   });
</script>
<body>
   <%@ include file="../common/_header.jsp"%>
   <main class="content_view_main">
      <div class="borders">
         <div class="community_first_view">
            <div class="community_first_view_title">
               <h3>${community.title}</h3>
            </div>
            <hr>
            <div class="community_content_view">
               <div class="community_content_view_title">
                  <div class="community_imfo">
                     <dl>
                        <dt>카테고리</dt>
                        <dd id="a"></dd>
                     </dl>
                     <span>|</span>
                     <dl>
                        <dt>작성일</dt>
                        <dd><fmt:formatDate value="${community.write_date}" pattern="yyyy년 MM월 dd일"/></dd>
                     </dl>
                     <span>|</span>
                     <dl>
                        <dt>조회</dt>
                        <dd><c:out value="${community.views}" default="0"/></dd>
                     </dl>
                  </div>
               </div>
            </div>
            <div class="community_content_view_imfo">
               <p><c:out value="${community.content}" /></p>
            </div>
            <div class="community_imfo_retouch_delet" style="text-align: center;height: 100px;">
         <c:if test="${not empty mbLoginName}"><!-- 누군가 로그인중.. -->
            <c:if test="${mbPKId eq community.member_index}"> <!-- 글쓴이 본인인증 -->
               <a class="btn_content" href="${pageContext.request
                  .contextPath}/retouch_content.woo?atId=${community.board_index}">수정하기</a>
               <a class="btn_content" href="#" onclick="del(${community.board_index})">삭제하기</a>
            </c:if>
         </c:if>
            </div>
               현재까지 달린 댓글의 갯수는 <c:out value="${asSize}" default="0" />개입니다.
               <br>
               <form action="${pageContext.request.contextPath}/Writecomment.woo" method="post">
                  <div class="community_comment">
                     <input type="hidden" name="boardIndex" value="${!empty CV ? CV.boardId: param.atId}">
                     <input type="hidden" name="memberIndex" value="${mbPKId}">
                        <input type="text" placeholder="댓글을 입력해주세요" class="comment" name="content" size='70'> <input type="submit" value="등록"
                        class="comment_sumit">
                  </div>
               </form>
               <div class="reply">
                  <c:choose>
                     <c:when test="${!empty asSize}">
                        <ul class="comment_div_box">
                           <c:forEach var="as" items="${asList}">
                                    <div class="reply_name">
                                    <c:forEach var="mem" items="${member}">
                                    <c:if test="${mem.memberIndex eq as.memberIndex}">
                                       ${mem.nickName}
                                    </c:if>
                                    </c:forEach>
                                    <fmt:formatDate value="${as.createDate}" pattern="yyyy.MM.dd"/>     
                                    </div>
                                    <div class="reply_show" id="reply_show_${as.commentIndex}" style="word-break:break-all;">${as.content}
                                       <div class="reply_del_ret">
                                          <input id="rm_${as.commentIndex}" type="hidden" name="boardIndex" value="${atId}">&nbsp;
                                          <c:if test="${as.memberIndex eq mbPKId}">   
                                          <a class="layer_button"  style="color: #fff;" onclick="deletecomment(${as.commentIndex})">삭제</a>
                                          <a class="retouch_button" style="color: #fff;"  id="retouch_button" onclick="retouchcomment(${as.commentIndex})">수정</a>
                                          </c:if>
                                       </div>
                                    </div>
                                 <form action="${pageContext.request.contextPath}/retouch_comment.woo">
                                    <input type="hidden" name="boardIndex" value="${atId}">                     
                                    <input type="hidden" name="memberIndex" value="${mbPKId}"> 
                                    <input type="hidden" name="commentId" value="${as.commentIndex}">
                                    <div class="retouch_reply" style="display: none" id="retouch_reply_${as.commentIndex}">
                                       <input type="text"value="${as.content}" class="comment" name="comment" size='70' style="border: 0;width: 91%;padding: 7px;border-radius: 6px;"> 
                                       <input type="submit" value="수정"class="retouch_submit" style="font-size: 13px;background: #16aa16;padding: 10px;border-radius: 5px;font-weight: bold;border: 0;color: #fff;">
                                    </div>
                                 </form>
                        </c:forEach>
                        </ul>
                     </c:when>
                     <c:when test="${empty asSize}">
                        <i>아직 댓글이 하나도 없습니다! :)</i>
                     </c:when>
                  </c:choose>
                  <br>
                  <br>
               </div>
            </div>
            <div class="blank"></div>
         </div>
      </main>
</body>
<script>
   function delete_check() {
      var answer = confirm("삭제하시겠습니까?.")
      if (answer == true) {
         alert("삭제되었습니다.");
         location.replace("${pageContext.request.contextPath}/content.woo");
      } else {
      }
   }
   function reply_delete_check() {
      var answer = confirm("삭제하시겠습니까?.")
      if (answer == true) {
         alert("삭제되었습니다.");
         location.replace("${pageContext.request.contextPath}/content_view.woo");
      } else {
      }
   }
   function input_check() {
      var answer = confirm("등록하시겠습니까?.")
      if (answer == true) {
         alert("등록되었습니다.");
         location.replace("${pageContext.request.contextPath}/content_view.woo");
      } else {
      }
   }
   function retouch_check() {
      var answer = confirm("수정하시겠습니까?.")
      if (answer == true) {
         alert("수정되었습니다.");
         location
               .replace('${pageContext.request.contextPath}/retouch_content.woo');
      } else {
      }
   }
</script>
</html>