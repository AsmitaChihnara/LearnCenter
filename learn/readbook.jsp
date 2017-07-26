<%@ page import="java.io.*"%>

<%@ include file="dbcon.jsp" %>
<%!  String oldFile,bid,bname; %>
<%
//response.setContentType("pdf");

 
			bid=(String)session.getAttribute("bid");
			
try{
       ResultSet rs = st.executeQuery("select * from book where bid='"+bid+"'");
            if(rs.next()){
                  oldFile  = rs.getString("filename");
	
 
 }  }catch(Exception eee){  }
con.close();
	 %>
<embed src="books/<%=oldFile%>" width="100%" height="100%">