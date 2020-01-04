<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%@include file ="identifyProduct.jsp" %>


<!DOCTYPE html>
<html lang="zh-Hant-TW">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>搜尋商品</title>
    <link rel="icon" href="../images/logo.ico" type="image/x-icon">
		
		<link rel="stylesheet" type="text/css" href="../CSS/index.css">
    <link rel="stylesheet" type="text/css" href="../CSS/2019_award.css">
		<script src="../js/index.js"></script>
	</head>
	<body bgcolor="#99FFFF">
		<header>
			<a href="index.html"><img src="../images/logo.png" alt="" width="330px" height="80px"></a>
			</header><!-- /header -->
			<nav class="NP">
				
			
			<div class="topnav" id="myTopnav">
  <a href="index.html" class="active">回首頁</a>
  <a href="2019_award.html">2019文具大賞</a>
  <a href="hot_sales.html">熱銷商品</a>
  <div class="dropdown">
    <button class="dropbtn">文具分類
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="gunpen.html">鋼筆</a>
      <a href="pencil.html">鉛筆</a>
      <a href="pen.html">原子筆</a>
      <a href="autopen.html">自動鉛筆</a>
      <a href="note.html">筆記本</a>
      <a href="others.html">其他</a>
    </div>
  </div>
  <a href="about.html">關於我們</a>
  <a href="search.html">搜尋商品</a>
  <a href="member.html">會員專區</a>
  <div class="LOGINPO">
  	<a href="login.html">我要登入</a>
    <a></a>
    <a href="resinger.html">註冊新帳號</a>
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>
</nav>
           <section>
             <a href="login.html"> <img class="CAR" title="請先登入" src="../images/car.png" alt="" width="100px" height="100px"></a>
             <img class="BGBGBG" src="../images/003.png" height="720px" width="1511px">
            </section>

 <section>
              <ul class="breadcrumb">
             <li><h1>現在位置:　</h1></li>
             <li><a href="index.html">首頁</a></li>
             <li><a href="search.html">搜尋商品</a></li>
            </ul>
</section>



<%

    String productSearch = new String(request.getParameter("search").getBytes("iso-8859-1"), "utf-8");
    sql = " SELECT * FROM product WHERE name like '%"+productSearch+"%' " ;
    ResultSet papers =con.createStatement().executeQuery(sql);

%>    
    <section class="SALES">
<%
    String numturn = "0" ;
    int temp = 0 ;
    while(papers.next()) {
        temp = papers.getInt("num") ;
%>
<%      if( temp <= 9 ){
            numturn = numturn + Integer.toString(temp) ;
        } 
        else{
            numturn = Integer.toString(temp) ;
        }
        %>
        <div style="padding-bottom:50px;">
        <a href="S<%=numturn%>_login.html"><div class="S<%=numturn%>">
        <img id="S<%=numturn%>" src="../images/S<%=numturn%>.jpg" width="400px" height="400px">
        <h1><%out.println(papers.getString("name") + "</br>") ;%></h1>
        </div></a></div>

<%
    numturn = "0" ;
    } // while
    
%>
</section> 


<footer style="color:white;text-align:center;background-color:black; position: relative;
     top:389px; left:-10px;">
    <p>
  &nbsp;<br> 
    &nbsp;<br>
    Copyright © 2019 by ボールペン comp.
    &nbsp;<br>
    &nbsp;<br>
    &nbsp;<br>
    </p>
  </footer>


</body>
</html>


