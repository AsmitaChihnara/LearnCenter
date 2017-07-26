<%@ include file="dbcon.jsp" %>
<%! String bid; %>
<%
bid=(String)session.getAttribute("bid");

try{
int x=st.executeUpdate("update book set bookname='"+request.getParameter("bname")+"',cd='"+request.getParameter("cd")+"',rate='"+request.getParameter("rate")+"',dpr='"+request.getParameter("dpr")+"' where bid='"+bid+"'");
 
  %>
  <input type="hidden" name="t6" value="bid">
<%
con.close();
}catch(Exception e){out.print(e);}
	%>				<jsp:forward page="adminbook.jsp" />
