<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%
    sql="DELETE FROM cart WHERE id= '"+(String)session.getAttribute("id")+"'" ;
    con.createStatement().executeUpdate(sql);
    response.sendRedirect("index_login.html");
%>

