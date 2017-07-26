<%@ include file="dbcon.jsp" %>
<%! String eid; %>
<%
try{
eid=request.getParameter("eid");
 int x=st.executeUpdate("update employee set desig='"+request.getParameter("desig")+"' where eid='"+eid+"'");

  if(x!=0){
    out.print("updated successfully");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="adminstaff1.jsp?lid=<%=eid%>?lnm=<%=lnm%>" />			