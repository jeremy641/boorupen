<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*" pageEncoding="utf-8" %>

<%@include file ="config.jsp" %>
<%@include file ="identifyProduct.jsp" %>
<%@ page import = "java.util.Arrays" %>
<%@ page import = "java.util.stream.Collectors" %>

<%!
    String priceCal( String number, String price ) {
        int num = Integer.parseInt(number) ;
        int cash = Integer.parseInt(price) ;
        int total = num * cash ;
        String totalcash = Integer.toString( total );

        return totalcash ;
    }
// 計算總價
%>

<%!
    String ArraytoString( String[] strArray ){
        String joinedString = String.join("", strArray) ;

        return joinedString;
    }
%>

<%
String new_id = (String)session.getAttribute("id");
String arrayproduct[] = request.getParameterValues("sales");//商品名
String arraycolor[] = request.getParameterValues("Sales_option") ;
String number = request.getParameter("quantity");
String price = request.getParameter("price");// 價錢
//讀取值

String Numproduct = ArraytoString(arrayproduct);
String color = ArraytoString(arraycolor);
// 字串陣列轉自串
String product = acctualName( Numproduct );

String totalPrice = priceCal( number, price );
//算總價錢
//out.println(new_id + "<br>" + product +"<br>"+ color +"<br>"+ number +"<br>"+ price );
sql="SELECT * FROM cart WHERE product='" +product+ "'AND color='"+color+"'";
ResultSet papers =con.createStatement().executeQuery(sql);
if(!papers.next()) {
    sql = " insert into cart ( id, product, color, number, price ) values( '"+new_id+"', '"+product+"','"+color+"','"+number+"','"+totalPrice+"' ) " ;
//out.println(sql);
    con.createStatement().executeUpdate(sql) ; 
// 放入sql
}
else{
    int temp = papers.getInt("number") ;
    temp = temp + Integer.parseInt(number) ;
    number = Integer.toString(temp) ;
    totalPrice = priceCal( number, price );
    sql="DELETE FROM cart WHERE product='" +product+ "'AND color='"+color+"'";
    con.createStatement().executeUpdate(sql) ; 
    sql = " insert into cart ( id, product, color, number, price ) values( '"+new_id+"', '"+product+"','"+color+"','"+number+"','"+totalPrice+"' ) " ;
    con.createStatement().executeUpdate(sql) ;
}

response.sendRedirect("buycar_login.jsp"); // 跳轉到購物車

%>
