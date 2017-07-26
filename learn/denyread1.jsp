<%@ include file="dbcon.jsp" %>
<%! String name; %>
<%
try{
int x=0;

name=(String)session.getAttribute("na");
x=st.executeUpdate("delete from reader where name='"+name+"'");
if(x!=0){
    out.print("request denied");
 }
 else
 out.print("ok");
con.close();
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="request.jsp">
<jsp:param name="a1" value="error" />

 		</jsp:forward>
	