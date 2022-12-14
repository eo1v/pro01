<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,java.text.*, java.util.*" %>
<%
	String sid = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
 <head>
    <%@ include file ="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="./css/header.css">
    <style>
    /* header.css */
    .hd { position: fixed;}

    /* content */
    .vs { clear:both; width: 100%; height: 200px; overflow:hidden; }
    .vs img { display: block; width: 100%; height: auto; }
    .bread { clear:both; width: 100%; line-height : 60px; }
    .bread_fr { width :1200px; margin: 0 auto;}
 
     .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
   .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:#333; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:160px; text-align:center; }
	.tb tr th:nth-child(3) { width:160px; text-align:center; }
	.tb tr th:last-child { text-align:center; }
    /* footer.css */
    </style>
    <link rel ="stylesheet" href="./css/footer.css" >
    
</head>
<body>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/title.jfif" alt="비주얼">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">글 쓰기</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">글 쓰기</h2>
  				<div class="frm1">
  					<form name="frm" action="boardWritePro.jsp" method="post" class="frm">
	  					<table class="tb">
	  						<tbody>             
								<tr>
									<th>제목</th>
									<td><input type="text" name="title" id="title" class="in_data" required/></td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<textarea cols="100" rows="8" name="content" id="content"></textarea>
									</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td><%=sid %>
									<input type="hidden" name="author" id="author" value="<%=sid%>"> 
									</td>
								</tr>
							</tbody> 
						</table>
						<div class="btn_group">
							<button type="submit" class="btn primary">글 쓰기</button>
							<a href="boardList.jsp" class="btn primary">게시판 목록</a>
						</div>
					</form>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>