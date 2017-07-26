<%@ include file="dbcon.jsp" %>
<%! String name; %>
<%
try{
int x=0;

name=request.getParameter("ename");
x=st.executeUpdate("update login set status='y' where logname='"+name+"'");
if(x!=0){
    out.print("added successfully");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
<jsp:forward page="request.jsp">
<jsp:param name="a1" value="error" />
 		</jsp:forward>	