<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>

<!DOCTYPE html>
<html lang="zh-Hant-TW">
<head>
	<meta charset="UTF-8">
	<title>後臺管理員</title>
  <link rel="icon" href="../images/logo.ico" type="image/x-icon">
	<link rel="stylesheet" type="text/css" href="../CSS/login.css">
	<link rel="stylesheet" type="text/css" href="../CSS/index.css">
	<script src="../js/index.js"></script>

	
</head>
<body>
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
           
<div class="bg-img2">
  <form action="pmproduct.jsp" class="container" method="post">
    <h1>增減商品</h1>

    <label for="email"><b>進貨商品</b></label>
    <input type="text" method="post" placeholder="輸入商品名"  name="plus" required>
    <label for="email"><b>進貨數量</b></label>
    <input type="text" method="post" placeholder="輸入數量" onkeyup="value=value.replace(/[\W]/g,'') " name="plusnum" required>

    <label for="psw"><b>出貨商品</b></label>
    <input type="text" method="post" placeholder="輸入商品名" name="minus" required>
    <label for="email"><b>出貨數量</b></label>
    <input type="text" method="post" placeholder="輸入數量" onkeyup="value=value.replace(/[\W]/g,'') " name="minusnum" required>

    <button type="submit" class="btn">確定商品</button>
  </form>
</div>

<div class="bg-img2">
  <form action="searchproduct.jsp" class="container" method="post">
    <h1>查詢訂單</h1>

    <label for="email"><b>查詢帳號</b></label>
    <input type="text" method="post" placeholder="輸入帳號" onkeyup="value=value.replace(/[\W]/g,'') " name="account" required>

    <button type="submit" class="btn">確定查詢</button>
  </form>
</div>
 



<footer>
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
