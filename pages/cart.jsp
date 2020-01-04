<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>

<%
String new_id = (String)session.getAttribute("id"); // 拿帳號
sql="SELECT * FROM cart WHERE id='"+new_id+"' " ;
ResultSet papers =con.createStatement().executeQuery(sql); // 找帳號買所有商品的資料
int TotalPrice = 0 ;
String cash ="";

while(papers.next()){ //順序印出所有商品
        out.println("商品名:"+papers.getString("product")+"<br>");
                
		out.println("顏色:"+papers.getString("color")+"<br>");

		out.println("購買數量:"+papers.getString("number")+"<br>");

		out.println("此商品總價:"+papers.getString("price")+"<br>");

        cash = papers.getString("price") ;

        TotalPrice = TotalPrice + Integer.parseInt(cash) ; // 計算總價
}

out.println("購買總價:"+ TotalPrice +"<br>") ;


%>
