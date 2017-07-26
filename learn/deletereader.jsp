<%@ include file="dbcon.jsp" %>
<%! String rid; %>
<%
try{
int x=0;
rid=request.getParameter("rid");
x=st.executeUpdate("delete from login where id='"+rid+"'");

  if(x!=0){
    out.print("deleted successfully");
 int y=0;
 y=st.executeUpdate("delete from reader where rid='"+rid+"'");
}
con.close();
}catch(Exception e){out.print(e);}
	%>
<jsp:forward page="adminreader.jsp" />					