<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>

<%
int temp = 0 ;
String k = "" ;
String m = "" ;
String plus = new String(request.getParameter("plus").getBytes("iso-8859-1"), "utf-8");
String plusnum = request.getParameter("plusnum");
String minus = new String(request.getParameter("minus").getBytes("iso-8859-1"), "utf-8");
String minusnum = request.getParameter("minusnum");


sql="SELECT * FROM cart WHERE product='" +plus+ "' ";
ResultSet pluspapers =con.createStatement().executeQuery(sql);

sql="SELECT * FROM cart WHERE product='" +minus+ "' ";
ResultSet minuspapers =con.createStatement().executeQuery(sql);

    while (pluspapers.next()){
        temp = pluspapers.getInt("qua") + Integer.parseInt(plusnum) ;
        k = Integer.toString(temp) ;
        m = pluspapers.getString("num") ;
        sql="DELETE FROM cart WHERE product='" +plus+ "'";
        con.createStatement().executeUpdate(sql) ; 
        sql = " insert into cart ( name, num, qua ) values( '"+plus+"', '"+m+"','"+k+"' ) " ;
        con.createStatement().executeUpdate(sql) ;
    }

    temp = 0 ;
    k = "" ;
    m = "" ;
    while(minuspapers.next()){
        temp = minuspapers.getInt("qua") + Integer.parseInt(minusnum) ;
        k = Integer.toString(temp) ;
        m = minuspapers.getString("num") ;
        sql="DELETE FROM cart WHERE product='" +minus+ "'";
        con.createStatement().executeUpdate(sql) ; 
        sql = " insert into cart ( name, num, qua ) values( '"+minus+"', '"+m+"','"+k+"' ) " ;
        con.createStatement().executeUpdate(sql) ;
    }
    response.sendRedirect("control.jsp"); // 跳轉到購物車




%>