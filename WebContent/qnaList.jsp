<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*"  %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp" %>
	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
<style>
 /* header.css */
    
    .vs { clear:both; width: 100%; height: 200px; overflow:hidden; }
    .vs img { display: block; width: 100%; height: auto; }
    .bread { clear:both; width: 100%; line-height : 60px;  }
    .bread_fr { width :1200px; margin: 0 auto;}
    
    /* footer.css */
	.page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }
    .frm { border:2px solid #333; padding: 24px; width: 580px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #333; border-top:2px solid #333; 
    color:#fff; background-color:#333; }
    .tb td { height: 48px; border-bottom:1px solid #333; text-align:center; }
	.tb tr th { width:80px; text-align:center; }
	.tb tr th { width:160px; text-align:center; }
	.tb tr th { width:160px; text-align:center; }
	.tb tr th{ text-align:center; }
    .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#f36; font-size:16px; text-indent:0.5em; }
    .in_btn { display:block; background-color:#333; min-width:120px; height: 32px; 
    line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; }
    .in_btn:hover { background-color: deepskyblue; }
</style>
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js">
</script>
</head>
<body>
<div class="wrap">
	<script>
	$(document).ready( function () {
	    $('#myTable').dataTable();
	});
	</script>
    <header class="hd">
       <%@ include file ="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/title.jfif" alt="비주얼">
        </figure>
        	<div class="bread">
           		 <div class="bread_fr">
                	<a href="index.jsp" class="home">HOME</a> &gt;
               		 <span class="sel">질문 및 답변</span>
           		 </div>
       		 </div>
         <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">질문 및 답변</h2>
                <div class="tb_fr">
					<table class="td" id="myTable">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	

	String sid = (String) session.getAttribute("id");
	
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;	
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid ="system";
	String dbpw="1234";
	String sql ="";
	
	int cnt=0;
		
try {
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection(url, dbid, dbpw);
	sql = "select * from qnaa";
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();		
	
	while(rs.next()){
			cnt++;

%>
			<tr>
				<td><%=cnt %></td>
				<td>
<%	if(rs.getString("sec").equals("Y")){
				if(rs.getInt("lev")==0){
					if(sid.equals(rs.getString("author")) || sid.equals("admin")){
%>
				<a href='qnaDetail.jsp?no=<%=rs.getString("no")%>'><%=rs.getString("title")%></a>
<%
					} else {
%>
					<span><%=rs.getString("title")%></span>
<%
					} 
				}else {
					if(sid.equals(rs.getString("author")) || sid.equals("admin")){
%>
					<a href='qnaDetail.jsp?no=<%=rs.getString("no")%>' style="padding-left:30px"><%=rs.getString("title")%></a>
<%
					} else { 
%>
					<span><%=rs.getString("title") %></span>
<%
					}
				}
	} else {
				if(rs.getInt("lev")==0){
						if(sid.equals(rs.getString("author")) || sid.equals("admin")){
%>
					<a href='qnaDetail.jsp?no=<%=rs.getString("no")%>'><%=rs.getString("title")%></a>
<%
						} else {
%>
						<span><%=rs.getString("title")%></span>
<%
						} 
					}else {
						if(sid.equals(rs.getString("author")) || sid.equals("admin")){
%>
						<a href='qnaDetail.jsp?no=<%=rs.getString("no")%>' style="padding-left:30px"><%=rs.getString("title")%></a>
<%
						} else { 
%>
						<span><%=rs.getString("title") %></span>
<%
						}
					} 
				}					
%>


	
				</td>
				<td><%=rs.getString("author")%></td>
				<td><%=rs.getDate("resdate")%></td>
			</tr>		
<% 
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		rs.close();
		pstmt.close();
		con.close();
	} 
%>
		</tbody> 
	</table>
		<div class="btn_group">
			<a href="qnaWrite.jsp" class="btn primary">글쓰기</a>
		</div>
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