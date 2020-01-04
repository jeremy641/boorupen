<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file ="config.jsp" %>
<html>
<head>
<title>add</title>
</head>
<body>
<%

           
    String new_name=new String(request.getParameter("name").getBytes("ISO-8859-1"));
    String new_mail=request.getParameter("mail");
    String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"));
    String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"));
    java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
		   
		   
	if( request.getParameter("name") != "" && request.getParameter("mail") != "" && request.getParameter("subject") != "" && request.getParameter("content") != "" ){
			    //out.println(request.getParameter("name"));
				//out.println(request.getParameter("mail"));
				//out.println(request.getParameter("subject"));
				//out.println(request.getParameter("content"));
		sql="insert into guestbook (name, mail, subject, content, putdate) ";
		sql+="value ('" + new_name + "', ";
		sql+="'"+new_mail+"', ";
		sql+="'"+new_subject+"', ";
		sql+="'"+new_content+"', ";   
		sql+="'"+new_date+"')";      

		con.createStatement().execute(sql);
		response.sendRedirect("view.jsp?page=1");
	}
	else{
		out.println("<a href='board.jsp'>請填寫完整</a><p>");
	}

%>
</body>
</html>
