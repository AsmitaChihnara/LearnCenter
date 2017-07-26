<%@ include file="dbcon.jsp" %>
<%! String name; %>
<%
try{
int x=0;

name=request.getParameter("ename");
session.setAttribute("na",name);
x=st.executeUpdate("delete from login where logname='"+name+"'");
if(x!=0){
    out.print("request denied successfully");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="deny1.jsp">
<jsp:param name="a1" value="error" />

 		</jsp:forward>