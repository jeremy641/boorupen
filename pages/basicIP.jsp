<meta http-equiv="Content-Type" content="text/html; charaset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file ="config.jsp" %>
<%!
    String ArraytoString( String[] strArray ){
        String joinedString = String.join(" ", strArray) ;

        return joinedString;
    }
%>
<%
String sta[] = request.getParameterValues("status") ;
String status = ArraytoString(sta);
	String new_id = (String)session.getAttribute("id");
	String new_nametemp[] = request.getParameterValues("name");
	String new_emailtemp[] = request.getParameterValues("email");
	String new_phonenumbertemp[] = request.getParameterValues("phonenumber");
	String new_sex = request.getParameter("SEX");
	String new_birthdate = request.getParameter("birthdate");
	String new_address1temp[] = request.getParameterValues("address1");
	String new_address2temp[] = request.getParameterValues("address2");
	String new_email2temp[] = request.getParameterValues("email2");
	String new_deliverytemp[] = request.getParameterValues("delivery");

	String new_name = ArraytoString(new_nametemp);
	String new_email = ArraytoString(new_emailtemp);
	String new_phonenumber = ArraytoString(new_phonenumbertemp);
	String new_address1 = ArraytoString(new_address1temp);
	String new_address2 = ArraytoString(new_address2temp);
	String new_email2 = ArraytoString(new_email2temp);
	String new_delivery = ArraytoString(new_deliverytemp) ;

	sql = "SELECT * FROM basicmember WHERE email=? AND backupemail=?" ;
	PreparedStatement psmt = null ;
	psmt = con.prepareStatement(sql) ;
	psmt.setString(1,request.getParameter("email")) ;
	psmt.setString(2,request.getParameter("email2")) ;
	ResultSet paperrs = psmt.executeQuery() ;
	if(paperrs.next()){

		sql = "delete from basicmember where id='"+new_id+"' ";
		con.createStatement().executeUpdate(sql) ;
	
		sql="insert into basicmember (id, name, email, phonenumber, sex, birthdate, firstaddress, secondaddress, backupemail ,deliver ) values( '"+new_id+"', '"+new_name+"', '"+new_email+"', '"+new_phonenumber+"', '"+new_sex+"', '"+new_birthdate+"', '"+new_address1+"', '"+new_address2+"','"+new_email2+"', '"+new_delivery+"' ) ";
		con.createStatement().executeUpdate(sql) ; 

		response.sendRedirect("member_login.jsp");
	}
	else{
		out.println("拜託別!!<a href='member_login.jsp'>Q_Q</a>重新填寫");
	}
%>