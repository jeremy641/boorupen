
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8";
Connection con=DriverManager.getConnection(url,"root","1234");
String sql="use aaa" ;
con.createStatement().execute(sql) ;
%>
