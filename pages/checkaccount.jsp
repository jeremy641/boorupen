<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%
//out.println(request.getParameter("email"));
//out.println(request.getParameter("psw"));


if(request.getParameter("new_account") !=null && request.getParameter("new_password") !=null){
	
    session.removeAttribute("id");
	sql="SELECT * FROM idpass WHERE email='" + request.getParameter("new_account") + "'";
		ResultSet papers =con.createStatement().executeQuery(sql);
		if(papers.next()){
			out.println("帳號已存在!!<a href='resinger.html'>按此</a>重新建立帳號");
		}
		else{
            String new_email = request.getParameter("new_account") ;
            String new_psw = request.getParameter("new_password") ;
            
            sql="insert into idpass ( email, psw )values( '"+new_email+"', '"+new_psw+"')" ;
            int plus = con.createStatement().executeUpdate(sql) ; //新增帳密
            if( plus > 0) {
                session.setAttribute("id", new_email);
                out.println("新增成功");
                out.println("<br><a href='member_login.jsp'>點擊進入會員專區</a>");
            }
            else{
                out.println("新增失敗");
                out.println("<a href='resigner.html'>重新建立</a>");
            }
        }

			
}

%>