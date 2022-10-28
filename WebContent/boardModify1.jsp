<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*, java.util.*,java.text.*" %>
    
    <% 
    	String sid = (String) session.getAttribute("id");  
    	int no = Integer.parseInt(request.getParameter("no"));
    %>
    
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/reset2.css">
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
<link rel="stylesheet" href="./css/footer.css">
</head>
<body>

<div>
 <form>
	<table>
		<!-- <tr>
			<th>글번호</th>
			<td></td>
		</tr> --> 
		<tr>
			<th><label for="title">제목</label></th>
			<td><input type="text" name="title" id="title" value="" class="in_btn"></td>
		</tr>
		<tr>
			<th><label for="content">내용</label></th>
			<td><textarea cols="100" rows="8" name="content" class="in_but"></textarea></td>
		</tr>
		<tr>
			<th><label for="author">작성자</label></th>
			<td></td>
		</tr>
	</table>
 </form>
</div>
<footer>
<%@ include file="footer.jsp" %>
</footer>
</body>
</html>