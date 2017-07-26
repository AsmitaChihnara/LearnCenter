<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ include file="dbcon.jsp" %>
<%
response.setContentType("text/html");
 String bid=(String)session.getAttribute("bid");
try{
String zzz =".//webapps//learn//books//";
       ResultSet rs = st.executeQuery("select * from book where bid='"+bid+"'");
        try{
            if(rs.next()){
                 String oldFile  = rs.getString("filename");
	File fff = new  File(zzz+oldFile);
	System.out.println("<br> old File : " + zzz +":"+oldFile);
     	       fff.delete();
			   } 
       }catch(Exception eee){  }
    String qry="delete from book  where bid='"+bid+"'";
    int s = st.executeUpdate(qry);
}catch(Exception e){out.print(e);}
	%>
<jsp:forward page="adminbook.jsp" />					