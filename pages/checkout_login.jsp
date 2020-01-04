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

		<title>文具分類 自動鉛筆</title>
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
             <li><a href="checkout_login.html">結帳</a></li>
             
            </ul>
            </section>

            <section>
              <div class="row">
  <div class="col-75">
    <div class="container">
      <form action="complete_login.jsp">

        <div class="row">
          <div class="col-50">
            <h3>基本資料填寫　(*為必填)</h3>
            <label for="fname"><i class="fa fa-user"></i> *真實姓名</label>
            <input type="text" id="fname" name="firstname" placeholder="例:王小明" required>
            <label for="email"><i class="fa fa-envelope"></i> *Email</label>
            <input type="text" id="email" name="email" placeholder="例:john@example.com" required>
            <label for="adr"><i class="fa fa-address-card-o"></i> 住家地址(如為店對店則不需提供)</label>
            <input type="text" id="adr" name="address" placeholder="例:桃園市中壢區中北路200號">
            <label for="phonenumber"><i class="fa fa-institution"></i> *電話</label>
            <input type="text" id="city" name="phonenumber" placeholder="例:0901123456" required>

            <div class="row">
              <div class="col-50">
                <label for="state">*配送方式</label>
                     <select name="deliver" id="state" style="font-size:20px">
                    <optgroup label="店對店">
　                   <option value="7-11">7-11</option>
                     <option value="familymart">全家</option>
　                   <option value="OK">OK</option>
                     <option value="Hilife">萊爾富</option>
                     </optgroup>
                     <optgroup label="宅配">
　                   <option value="blackcat">黑貓宅急便</option>
                     <option value="post">中華郵政</option>
　                   

                    </select>

              </div>

              <div class="col-75">
                <br>  
                <label for="shopname">店名/店家地址(如為宅配則不需提供)</label>
                <input type="text" id="zip" name="shopname" placeholder="例:中壢元化店 或 桃園市中壢區元化路二段31、33號">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>付款方式</h3>
             <label for="payment">*付款方式</label>
                     <select name="payment" id="state" style="font-size:20px">
                    
　                   <option value="credit">信用卡</option>
                     <option value="Toshop">貨到付款</option>
　                   <option value="OK">銀行轉帳</option>
                     
                     
　                   

                    </select>
             <p></p>
            <label for="fname" style="font-size:20px">信用卡(如付款方式為信用卡請填此項)</label>            
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">卡片姓名</label>
            <input type="text" id="cname" name="cardname" placeholder="例:王小明">
            <label for="ccnum">卡片號碼</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month(終止月份)</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September 或 9">

            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year(終止年份)</label>
                <input type="text" id="expyear" name="expyear" placeholder="2030">
              </div>
              <div class="col-50">
                <label for="cvv">CVV(信用卡認證編號)</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
            <label for="fname" style="font-size:20px">銀行轉帳(如付款方式為銀行轉帳請填此項)</label>
            <label for="account">銀行帳號</label>
            <input type="text" id="account" name="account" placeholder="例:700-2059986-0457782"> 
          </div>

        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> (信用卡)收件地址同帳單地址
        </label>
        <input type="submit" value="結帳" class="btn" method="post" style="background-color:red;">
      </form>
    </div>
  </div>

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