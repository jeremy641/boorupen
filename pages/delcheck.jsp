<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%
if(request.getParameter("id") !=null && request.getParameter("pwd") !=null){
	
	sql="SELECT * FROM idpass WHERE id='"+request.getParameter("id")+ "' AND pwd='"+request.getParameter("pwd")+"'" ;
		ResultSet papers =con.createStatement().executeQuery(sql); //搜尋id與pwd
		if(papers.next()){
            sql="DELETE FROM idpass WHERE id= '"+request.getParameter("id")+"'" ;
            int del= con.createStatement().executeUpdate(sql); //刪除帳密
            if(del>0){
			    response.sendRedirect("login.jsp"); //轉頁面
            }
            else{
                out.println("密碼帳號刪除失敗!!<a href='delaccount.jsp'>按此</a>重新輸入");
            }
		}
		else
			out.println("密碼帳號不存在!!<a href='delaccount.jsp'>按此</a>重新輸入");
}

%>

