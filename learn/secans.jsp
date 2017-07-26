<%@ include file="dbcon.jsp" %>
<%
try{
int x=st.executeUpdate("update login set pwd='"+request.getParameter("pwd1")+"' where eid='"+request.getParameter("na")+"'");

if(x!=0){
    out.print("Password updated successfully");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="index.jsp" />