<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/mypage.css">
    <link rel="stylesheet" href="../css/cmt.css">


<body>
	<%@ include file="../common/_header.jsp"%>


    <div class="box_main">
        <div class="menu_choice_box">
            <ul class="menu_tap">
                <li class="my_info" onclick="location.href='mypage.jsp'">내 정보관리</li>
                <li class="my_support" onclick="location.href='support.jsp'">후원내역</li>
                <li class="my_comment" style="background: rgba( 185, 108, 108, 0.5);">내 글/댓글</li>
            </ul>
        </div>
        <div>
        <h3>내 글/댓글</h3>
        </div>
        <div class="comment_full">
        <span class="small_title">내가 쓴 글 목록</span>
            <br>
            <table class="my_bulletin">
        <thead class="bulletin_head">
            <tr class="my_bullentin_box">
            <th class="my_bulletin_title">제목</th>
            <th class="my_bulletin_day">날짜</th>
            <th class="my_my_bulletin_btn">수정/삭제</th>
        </tr>
            </thead>
                <tbody>
            <tr class="bulletin_list0">
                <td>키키키ㅣ키키ㅣ키</td>
                <td>2021.01.03</td>
                <td>
                    <div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div>
                </td>
            </tr>
                    
            <tr class="bulletin_list1">
                <td>지원받기 위해서 어떻게</td>
                <td>2021.01.02</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
                    
                    
            <tr class="bulletin_list2">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="bulletin_list3">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="bulletin_list4">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="bulletin_list5">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>        
                    
                </tbody>
            </table>
        <span class="small_title">내가 쓴 댓글 목록</span>
            <br>
        <table class="my_comments">
            <thead class="comment_head">
            <tr>
            <th class="my_comments_com">댓글</th>
            <th class="my_comments_day">날짜</th>
            <th class="my_comments_btn">수정/삭제</th>
        </tr>
            </thead>
                <tbody>
                    <tr class="comment_list0">
                <td>댓글</td>
                <td>2021.01.03</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
                    
            <tr class="comment_list1">
                <td>댓글1</td>
                <td>2021.01.02</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
                    
                    
            <tr class="comment_list2">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_list3">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_list4">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_list5">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="option_box">
                        <ul>
                            <li class="option_modify">수정</li>
                            <li class="option_delete">삭제</li>
                        </ul>
                    </div></td>
            </tr>        
                    
                </tbody>
            </table>
        
    
        </div>
			</div>


</body></html>