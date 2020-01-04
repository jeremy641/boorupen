<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>

<%@include file ="config.jsp" %>
<%@include file ="identifyProduct.jsp" %>

<%
String new_id = (String)session.getAttribute("id"); // 拿帳號
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

		<title>訂單完成</title>
    <link rel="icon" href="../images/logo.ico" type="image/x-icon">
		
		<link rel="stylesheet" type="text/css" href="../CSS/index.css">
    <link rel="stylesheet" type="text/css" href="../CSS/2019_award.css">
    <link rel="stylesheet" type="text/css" href="../CSS/gunpen.css">
    <link rel="stylesheet" type="text/css" href="../CSS/checkout.css">
		<script src="../js/index.js"></script>
	</head>
	<body bgcolor="#99FFFF">
		<header>
      <a href="index_login.html"><img id="UP1" src="../images/logo.png" alt="" width="330px" height="80px"></a>
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
  <a href="member_login.html">會員專區</a>
  <a href="index.html">登出</a>
  <div class="LOGINPO">
    <a href="member_login.html">會員歡迎你!!</a>
    <a></a>
    <a href="resinger_login.html">註冊新帳號</a>
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>
</nav>
           <section>
             
              <img class="BGBGBG" src="../images/003.png" height="720px" width="1511px">
              <a href="#UP1"><img id="UP" src="../images/up.png" alt="" width="80px" height="80px" style="top:600px;"></a>
          
            </section>



             


            <section>
              <ul class="breadcrumb">
             <li><h1>現在位置:　</h1></li>
             <li><a href="buycar_login.html">購物車</a></li>
             <li><a href="checkout_login.html">結帳</a></li>
             <li><a href="complete_login.html">訂單完成</a></li>
             
            </ul>
            </section>

            <section>
            	
            	<h1 id="FGFG">感謝你的購買!!</h1>
            	<h1 id="FGFP">商品需要3~4日工作日方能寄出，請耐心等候。</h1>
            	<div class="ch">
            		<h3>訂單確認</h3>
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
            
            </section>

            <section>
            	<div class="CJ">
         
            <h3>基本資料</h3>
            <label for="fname"><i class="fa fa-user"></i> 真實姓名</label>
            <input type="text" id="fname" name="firstname" placeholder="請輸入地址" value="<%=request.getParameter("firstname")%>" readonly="readonly">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="email" id="email" name="email" value="<%=request.getParameter("email")%>"  placeholder="請輸入地址"  readonly="readonly">
            <label for="adr"><i class="fa fa-address-card-o"></i> 住家地址</label>
            <input type="text" id="adr" name="address"  value="<%=request.getParameter("address")%>"  placeholder="請輸入地址" readonly="readonly">
            <label for="phonenumber"><i class="fa fa-institution"></i> 電話</label>
            <input type="text" id="city" name="phonenumber" value="<%=request.getParameter("phonenumber")%>"  placeholder="請輸入地址" readonly="readonly">

            <h3>配送方式</h3>
            <label for="deliver"><i class="fa fa-institution"></i> 方式</label>
            <input type="text" id="city" name="deliver" value="<%=request.getParameter("deliver")%>" placeholder="請輸入地址"  readonly="readonly">
            <label for="shopname"><i class="fa fa-institution"></i> 店名/店家地址</label>
            <input type="text" id="city" name="shopname" value="<%=request.getParameter("shopname")%>"  placeholder="請輸入地址"  readonly="readonly">
            <label for="shopname"><i class="fa fa-institution"></i> 宅配配送地址</label>
            <input type="text" id="city" name="address" value="<%=request.getParameter("address")%>"  placeholder="請輸入地址" readonly="readonly">

            <h3>付款方式</h3>
            <label for="payment"><i class="fa fa-institution"></i> 方式</label>
            <input type="text" id="city" name="payment" value="<%=request.getParameter("payment")%>"  placeholder="請輸入地址" readonly="readonly">

            <h4>信用卡</h4>
            <label for="deliver"><i class="fa fa-institution"></i> 卡片姓名</label>
            <input type="text" id="city" name="cardname" value="<%=request.getParameter("cardname")%>"  placeholder="請輸入地址" readonly="readonly">
            <label for="deliver"><i class="fa fa-institution"></i> 卡片號碼</label>
            <input type="text" id="city" name="cardnumber" value="<%=request.getParameter("cardnumber")%>"  placeholder="請輸入地址" readonly="readonly">
            <label for="deliver"><i class="fa fa-institution"></i> Exp Month(終止月份)</label>
            <input type="text" id="city" name="expmonth" value="<%=request.getParameter("expmonth")%>"  placeholder="請輸入地址"  readonly="readonly">
            <label for="deliver"><i class="fa fa-institution"></i> Exp Year(終止年份)</label>
            <input type="text" id="city" name="expyear" value="<%=request.getParameter("expyear")%>"  placeholder="請輸入地址"  readonly="readonly">
            <label for="deliver"><i class="fa fa-institution"></i> CVV(信用卡認證編號)</label>
            <input type="text" id="city" name="cvv" value="<%=request.getParameter("cvv")%>"  placeholder="請輸入地址"  readonly="readonly">
            <label for="deliver"><i class="fa fa-institution"></i> (信用卡)收件地址同帳單地址</label>
            <input type="text" id="city" name="sameadr" value="<%=request.getParameter("sameadr")%>"  placeholder="請輸入地址"  readonly="readonly">

            <h4>銀行轉帳</h4>
            <label for="deliver"><i class="fa fa-institution"></i> 銀行帳號</label>
            <input type="text" id="city" name="account" value="<%=request.getParameter("account")%>"  placeholder="請輸入地址"  readonly="readonly">
            </div>
            <div id="CCCCC">
            <a href="movepro.jsp"><input type="button" value="繼續選購" class="btn"></a>
            </div>
            </section>




            <footer style="color:white;text-align:center;background-color:black; position: relative;
     top:2000px;left:-10px">
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