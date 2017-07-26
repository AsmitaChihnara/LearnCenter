<%@ page import="java.sql.*"  %>
<%! Statement st=null;  Connection con=null;   %>
<html><body>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/learn","root","");
st=con.createStatement();
}catch(Exception e){  out.println(e);   }
%>
</body></html>
