<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>

<%@include file ="config.jsp" %>
<%
sql="SELECT * FROM basicmember WHERE id='" + (String)session.getAttribute("id") + "'";
ResultSet papers =con.createStatement().executeQuery(sql);
%>
<!DOCTYPE html>
<html lang="zh-Hant-TW">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<title>會員專區</title>
    <link rel="icon" href="../images/logo.ico" type="image/x-icon">
		
		<link rel="stylesheet" type="text/css" href="../CSS/index.css">
    <link rel="stylesheet" type="text/css" href="../CSS/2019_award.css">
    <link rel="stylesheet" type="text/css" href="../CSS/member.css">
		<script src="../js/index.js"></script>
		<script src="../js/member.js"></script>
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
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
  <a href="member_login.jsp">會員專區</a>
  <a href="index.html">登出</a>
  <%
  String temp = (String)session.getAttribute("id") ;
  if( temp.equals("123") ){
    %>
    <a href="control.jsp">後台</a>
    <%
  }
  %>
  <div class="LOGINPO" style="left:380px;">
  	<a href="member_login.jsp">會員歡迎你!!</a>
    <a></a>
    <a href="resinger_login.html">註冊新帳號</a>
  </div>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
</div>




            </nav>
           <section>
             <a href="buycar_login.jsp"> <img class="CAR" src="../images/car.png" alt="" width="100px" height="100px"></a>
             <a href="#UP1"><img id="UP" src="../images/up.png" alt="" width="80px" height="80px"></a>

            </section>
             


             


            <section>
              <ul class="breadcrumb">
             <li><h1>現在位置:　</h1></li>
             <li><a href="index_login.html">首頁</a></li>
             <li><a href="member_login.jsp">會員專區</a></li>
            </ul>
            <img class="BGBGBG" src="../images/003.png" height="720px" width="1511px">
            </section>
        <%if(papers.next()){
        %>
            <section>
            	 <img id="border1" src="../images/border1.png" alt="" width="1200px" height="450px">
            	 <form action="basicIP.jsp"  method="post">
            	<div id="BG">
            	  
            		<h1 id="DODO">基本資料</h1>
                    <input type="hidden" name="status" value="1" >
                <h3>姓名:　<input type="text" name="name" value="<%=papers.getString("name")%>" onkeyup="value=value.replace(/[\W]/g,'') " required></h3>
                <h3>Email:　<input type="email" name="email" value="<%=papers.getString("email")%>"  required></h3>
                <h3>手機號碼:　<input type="text" name="phonenumber" onkeyup="value=value.replace(/[^\d]/g,'') "  value="<%=papers.getString("phonenumber")%>" required></h3>    

                <table>
                <tr>
                <th><h3> 性別:　<input type="radio" name="SEX" checked required> 男<br></h3></th>
                 <th><h3><input type="radio" name="SEX" required> 女<br></h3></th>    
                </tr>  
               </table>
                <h3>生日:　<input type="date" name="birthdate" required></h3>
                 
                </div>            
                 
           
               

           
              <img id="border2" src="../images/border1.png" alt="" width="1200px" height="450px">
              <div id="CG">
              
                <h1 id="TOTO">偏好設定</h1>

                <h3>地址1:　<input type="text" name="address1" value="<%=papers.getString("firstaddress")%>" onkeyup="value=value.replace(/[\W]/g,'') " required></h3>
                <h3>地址2:　<input type="text" name="address2" value="<%=papers.getString("secondaddress")%>" onkeyup="value=value.replace(/[\W]/g,'') " required></h3>
                <h3>備援E-mail:　<input type="email" name="email2" value="<%=papers.getString("backupemail")%>"  required></h3>   

                <table>
                <tr>
                <th><h3> 配送方式:　<input type="radio" name="delivery" value="conven" name="delivery" checked required> 店對店<br></h3>
                <th><h3><select id="selectmonth">
                  <option value=0 required>7-11</option>
                  <option value=1 required>全家</option>
                  <option value=2 required>OK</option>
                  <option value=3 required>萊爾富</option><br></h3></th>
                  </select>
                    <th><h3><input type="radio" name="delivery" value="home" onkeyup="value=value.replace(/[\W]/g,'') " required> 宅配到家<br></h3></th> 
                </tr>  
               </table>
                </div> 
                <button type="submit" id="PCW4" class="css_button" method="post">存檔</button>
                 </h3></th></tr></table></div></from>
            </section>
        <%
        }
        else{
        %>
            <section>
            	 <img id="border1" src="../images/border1.png" alt="" width="1200px" height="450px">
            	 <form action="basicIP.jsp"  method="post">
            	<div id="BG">
            	  
            		<h1 id="DODO">基本資料</h1>

                    <input type="hidden" name="status" value="0" >
                <h3>姓名:　<input type="text" placeholder="請輸入姓名" name="name" onkeyup="value=value.replace(/[\W]/g,'') " required></h3>
                <h3>Email:　<input type="email" placeholder="請輸入Email" name="email"  required></h3>
                <h3>手機號碼:　<input type="text" name="phonenumber" onkeyup="value=value.replace(/[^\d]/g,'') "  placeholder="請輸入號碼" required></h3>    

                <table>
                <tr>
                <th><h3> 性別:　<input type="radio" name="SEX" checked required> 男<br></h3></th>
                 <th><h3><input type="radio" name="SEX" required> 女<br></h3></th>    
                </tr>  
               </table>
                <h3>生日:　<input type="date" name="birthdate" required></h3>
                 
                </div>            
                 
           
               

           
              <img id="border2" src="../images/border1.png" alt="" width="1200px" height="450px">
              <div id="CG">
              
                <h1 id="TOTO">偏好設定</h1>

                <h3>地址1:　<input type="text" name="address1" placeholder="請輸入地址" onkeyup="value=value.replace(/[\W]/g,'') " required></h3>
                <h3>地址2:　<input type="text" name="address2" placeholder="請輸入備用地址" onkeyup="value=value.replace(/[\W]/g,'') " required></h3>
                <h3>備援E-mail:　<input type="email" name="email2" placeholder="請輸入備援E-mail"  required></h3>   

                <table>
                <tr>
                <th><h3> 配送方式:　<input type="radio" name="delivery" value="conven" name="delivery" checked required> 店對店<br></h3>
                <th><h3><select id="selectmonth">
                  <option value=0 required>7-11</option>
                  <option value=1 required>全家</option>
                  <option value=2 required>OK</option>
                  <option value=3 required>萊爾富</option><br></h3></th>
                  </select>
                    <th><h3><input type="radio" name="delivery" value="home" onkeyup="value=value.replace(/[\W]/g,'') " required> 宅配到家<br></h3></th> 
                </tr>  
               </table>
                </div> 
                <button type="submit" id="PCW4" class="css_button" method="post">存檔</button>
                 </h3></th></tr></table></div></from>
            </section>
        <%
        }
        %>

            <footer style="color:white;text-align:center;background-color:black; position: relative;
     top:425px;left:-10px">
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