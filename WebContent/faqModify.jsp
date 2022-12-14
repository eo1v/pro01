<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.*, java.util.*" %>
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
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) request.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
	
	String title = "";
	String content = "";
	String author = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from faqa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
	
%>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/title.jfif" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">???????????? ?????? ??? ?????? ????????????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">???????????? ?????? ??? ?????? ????????????</h2>
  				<div class="frm1">
  				<input type="hidden" name="no" id="no" value='<%=rs.getInt("no") %>' required>
  					<form name="frm" action="fqaModifyPro.jsp" method="post" class="frm">
	  					<table class="tb">
	  						<tbody>
	  							<tr>	
									<th>??????</th>
									<td><input type="text" name="title" id="title" value="<%=title %>" class="in_data" required /></td>
								</tr>
								<tr>
									<th>??????</th>
									<td>
										<textarea cols="100" rows="8" name="content" id="content"><%=content %></textarea>
									</td>
								</tr>
								<tr>
									<th>?????????</th>
									<td><%=author %></td>
								</tr>
							</tbody> 
						</table>
<% 	
	}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
						<div class="btn_group">
							<button type="submit" class="btn primary">??? ????????????</button>
							<a href="fqaList.jsp" class="btn primary">????????? ??????</a>
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