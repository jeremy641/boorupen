<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>

<%@include file ="config.jsp" %>
<%@include file ="identifyProduct.jsp" %>

<%
String new_id = request.getParameter("account") ; // 拿帳號
sql="SELECT * FROM cart WHERE id='"+new_id+"' " ;
ResultSet papers =con.createStatement().executeQuery(sql); // 找帳號買所有商品的資料
int TotalPrice = 0 ;
String cash ="";
%>
<!DOCTYPE html>
<html lang="zh-Hant-TW">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>購物車</title>
    <link rel="icon" href="../images/logo.ico" type="image/x-icon">
		
		<link rel="stylesheet" type="text/css" href="../CSS/index.css">
    <link rel="stylesheet" type="text/css" href="../CSS/2019_award.css">
    <link rel="stylesheet" type="text/css" href="../CSS/gunpen.css">
    <link rel="stylesheet" type="text/css" href="../CSS/checkout.css">
		<script src="../js/index.js"></script>
	</head>
	<body bgcolor="#99FFFF">
		<header>
      <a href="index_login.html"><img src="../images/logo.png" alt="" width="330px" height="80px"></a>
      </header><!-- /header -->
      <nav class="NP">
        
      
      <div class="topnav" id="myTopnav">
  <a href="index_login.html" class="active">回首頁</a>
  <a href="2019_award_login.html">2019文具大賞</a>
  <a href="hot_sales_login.html">熱銷商品</a>
  <div class="dropdown">
    <button class="dropbtn">文具分類
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="gunpen_login.html">鋼筆</a>
      <a href="pencil_login.html">鉛筆</a>
      <a href="pen_login.html">原子筆</a>
      <a href="autopen_login.html">自動鉛筆</a>
      <a href="note_login.html">筆記本</a>
      <a href="others_login.html">其他</a>
    </div>
  </div>
  <a href="about_login.html">關於我們</a>
  <a href="search_login.html">搜尋商品</a>
  <a href="member_login.jsp">會員專區</a>
  <a href="index.html">登出</a>
  <div class="LOGINPO">
    <a href="member_login.jsp">會員歡迎你!!</a>
    <a></a>
    <a href="resinger_login.html">註冊新帳號</a>
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>
</nav>
           <section>
             
              <img class="BGBGBG" src="../images/003.png" height="720px" width="1511px">
          
            </section>



             


            <section>
              <ul class="breadcrumb">
             <li><h1>現在位置:　</h1></li>
             <li><a href="buycar_login.jsp">購物車</a></li>
             
             
            </ul>
            </section>


            <section>
            	<div class="col-25">
    <div class="container">
      <h4>購物車
        <span class="price" style="color:black">
          <i class="fa fa-shopping-cart"></i>
         
        </span>
      </h4>
      <%
        while( papers.next() ){
       %>     
      <a href="#"><input type="text" name="product1" value="<%=papers.getString("product")%>" readonly="readonly"></a><span class="price"><input type="text" name="price1" value="<%=papers.getString("price")%>" readonly="readonly"></span>
      <%
      cash = papers.getString("price") ;
      TotalPrice = TotalPrice + Integer.parseInt(cash) ; // 計算總價
        }
        %>
      <p><br><br>運費<span class="price">$60</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b><input type="text" name="Total" value="<%=TotalPrice%>" readonly="readonly"></b></span></p>
    </div>
    <a href="control.jsp"><input type="submit" value="點擊返回" class="btn"></a>
  </div>
</div>
            </section>


            <footer style="color:white;text-align:center;background-color:black; position: relative;
     top:150px;left:-10px">
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