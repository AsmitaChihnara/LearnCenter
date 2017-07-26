<%@ include file="dbcon.jsp" %>
<%! String lid; %>
<%
try{
int x=0;
lid=request.getParameter("eid");
x=st.executeUpdate("delete from login where id='"+lid+"'");

  if(x!=0){
    out.print("deleted successfully");
	x=st.executeUpdate("delete from employee where eid='"+lid+"'");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
<jsp:forward page="adminstaff.jsp" />					