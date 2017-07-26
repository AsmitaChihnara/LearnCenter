<%@ include file="dbcon.jsp" %>
<%! String name,type; %>
<%
try{
int x=0;
type=(String)session.getAttribute("req");

name=request.getParameter("ename");
//x=st.executeUpdate("update login set status='y' where logname='"+name+"'");
if(x!=0){
    out.print("added successfully");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
	<input type="hidden" name="req" value="type">
<jsp:forward page="request1.jsp">
<jsp:param name="a1" value="error" />
 		</jsp:forward>	