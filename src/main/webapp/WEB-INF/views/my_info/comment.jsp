<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/_link.jsp"%>
<link rel="stylesheet" href="../css/mypage.css">
    <link rel="stylesheet" href="../css/cmt.css">


<body>
	<%@ include file="../common/_header.jsp"%>


     <div class="mypage_box_main">
        <div class="main_choice_box">
            <ul class="choice_menu_tap">
                <li class="menu_tap_info" onclick="location.href='mypage.jsp'">내 정보관리</li>
                <li class="menu_tap_support" onclick="location.href='support.jsp'">후원내역</li>
                <li class="menu_tap_comment" style="background: rgba( 185, 108, 108, 0.5);">내 글/댓글</li>
            </ul>
        </div>
        <div class="mycomment_box_main">
        <h3 class="comment_box_title">내 글/댓글</h3>
        </div>
        <div class="comment_box_menu">
        <span class="small_title">내가 쓴 글 목록</span>
            <br>
            <table class="bulletin_table">
        <thead class="bulletin_table_head">
            <tr class="bulletin_table_box">
            <th class="bulletin_table_box_title">제목</th>
            <th class="bulletin_table_box_day">날짜</th>
            <th class="bulletin_table_box_btn">수정/삭제</th>
        </tr>
            </thead>
                <tbody>
            <tr class="comment_box_menu_bullentin_table_body_list0">
                <td>키키키ㅣ키키ㅣ키</td>
                <td>2021.01.03</td>
                <td>
                    <div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div>
                </td>
            </tr>
                    
            <tr class="comment_box_menu_bullentin_table_body_list1">
                <td>지원받기 위해서 어떻게</td>
                <td>2021.01.02</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
                    
                    
            <tr class="comment_box_menu_bullentin_table_body_list2">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_box_menu_bullentin_table_body_list3">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_box_menu_bullentin_table_body_list4">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_box_menu_bullentin_table_body_list5">
                <td>가나다라마바사아자</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>        
                    
                </tbody>
            </table>
        <span class="comment_box_menu_small_title">내가 쓴 댓글 목록</span>
            <br>
        <table class="comments_table">
            <thead class="comments_table_head">
            <tr class ="comment_box_menu_comments_table_box">
            <th class="comments_table_box_com">댓글</th>
            <th class="comments_table_box_day">날짜</th>
            <th class="comments_table_box_btn">수정/삭제</th>
        </tr>
            </thead>
                <tbody>
                    <tr class="comment_box_menu_comments_table_body_list0">
                <td>댓글</td>
                <td>2021.01.03</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
                    
            <tr class="comment_box_menu_comments_table_body_list1">
                <td>댓글1</td>
                <td>2021.01.02</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
                    
                    
            <tr class="comment_box_menu_comments_table_body_list2">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_box_menu_comments_table_body_list3">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_box_menu_comments_table_body_list4">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>
            
            <tr class="comment_box_menu_comments_table_body_list5">
                <td>댓글</td>
                <td>2021.01.01</td>
                <td><div class="bullentin_list_option_box">
                        <ul>
                            <li class="modify_btn">수정</li>
                            <li class="delete_btn">삭제</li>
                        </ul>
                    </div></td>
            </tr>        
                    
                </tbody>
            </table>
        
    
        </div>
			</div>


</body></html>