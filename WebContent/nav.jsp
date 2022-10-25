<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String id = (String) session.getAttribute("id");
	String email = (String) session.getAttribute("email");
	String name = (String) session.getAttribute("name");	
%>  
   <div class="hd_wrap">
                <a href="index.jsp" class="logo">
                <img src="./img/logo.png" alt="로고">
                </a>
                <nav class="tnb">
            <%
             	if(id!=null && id.equals("admin")){   
			%>  
		        <div>
                <a href="memList.jsp">회원 관리</a>
                <a href="boardList.jsp">게시판 관리</a>
                <a href="logout.jsp">로그아웃</a>
                <a href="sitemap.jsp">사이트 맵</a>
				</div>
			<%
             	}else if(id!=null){ 
			%>
				<div>
				<span class="name_print"><%=name %>님</span>
				<a href="logout.jsp">로그아웃</a>
                <a href="mypage.jsp">마이페이지</a>
                <a href="logout.jsp">로그아웃</a>
				</div>             
            <%
             	}else {
            %>       
            	<div>
                <a href="login.jsp">로그인</a>
                <a href="join.jsp">회원가입</a>
                <a href="sitemap.jsp">사이트맵</a>
                </div>
            <%
             	}
            %>
            </nav>
                <nav class="gnb">
                    <ul>
                        <li class="item1">
                            <a href="" class="dp1">제품보기</a>
                            <ul class="sub">
                                <li><a href="product.jsp#page1">베스트셀러</a></li>
                                <li><a href="product.jsp#page2">퍼퓸</a></li>
                                <li><a href="product.jsp#page3">캔들</a></li>
                            </ul>
                        </li>
                        <li class="item2">
                            <a href="" class="dp1">선물추천</a>
                            <ul class="sub">
                                <li><a href="gift.jsp#page1">듀오세트</a></li>
                                <li><a href="gift.jsp#page2">퍼퓸핸드미니7</a></li>
                                <li><a href="gift.jsp#page3">손소독제트리오</a></li>
                            </ul>
                        </li>
                        <li class="item3">
                            <a href="" class="dp1">매장보기</a>
                            <ul class="sub">
                                <li><a href="show.jsp#page1">대한민국</a></li>
                                <li><a href="show.jsp#page2">중국</a></li>
                                <li><a href="show.jsp#page3">전시</a></li>
                            </ul>
                        </li>
                        <li class="item4">
                            <a href="" class="dp1">고객센터</a>
                            <ul class="sub">
                                <li><a href="service.jsp#page1">주문배송조회</a></li>
                                <li><a href="service.jsp#page2">적립금 전환</a></li>
                                <li><a href="service.jsp#page3">고객서비스</a></li>
                            </ul>
                        </li>
                        <li class="item5">
                            <a href="" class="dp1">소셜</a>
                            <ul class="sub">
                                <li><a href="social.jsp#page1">Instagram</a></li>
                                <li><a href="social.jsp#page2">Kakaotalk</a></li>
                                <li><a href="social.jsp#page3">Facebook</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>