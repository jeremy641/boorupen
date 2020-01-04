<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%@include file ="identifyProduct.jsp" %>
<%
    String new_name = "" ;
    String temp = "" ;
    int m = 50 ;
    for(int i = 1; i <= 40 ; i++){
        temp = Integer.toString(i) ;
        new_name = acctualName(temp) ;
	    sql="insert into product (name, num, qua) values( '"+new_name+"', '"+i+"', '"+m+"')" ;
	    con.createStatement().executeUpdate(sql);
    }
%>
