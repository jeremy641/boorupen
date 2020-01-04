<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%
if(request.getParameter("account_login") !=null && request.getParameter("password_login") !=null){
	
	sql="SELECT * FROM idpass WHERE email='"+request.getParameter("account_login")+ "' AND psw='"+request.getParameter("password_login")+"'" ;
		ResultSet papers =con.createStatement().executeQuery(sql);
		if(papers.next()){
			session.setAttribute("id",request.getParameter("account_login"));
			response.sendRedirect("index_login.html");
		}
		else
			out.println("密碼帳號不符!!<a href='login.html'>按此</a>重新登入");
}
%>

