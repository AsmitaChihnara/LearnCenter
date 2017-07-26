<%@ include file="dbcon.jsp" %>
<%!
ResultSet rs;
String na,type,cont;
%>
<%
type=request.getParameter("type");
na=request.getParameter("na");
cont=request.getParameter("cont");
try{
if(type.equalsIgnoreCase("Employee"))
rs=st.executeQuery("select * from employee where name='"+na+"' and (phone='"+cont+"' or mail='"+cont+"')");
 else if(type.equalsIgnoreCase("Author"))
rs=st.executeQuery("select * from author where aname='"+na+"' and (phone='"+cont+"' or mail='"+cont+"')");
else if(type.equalsIgnoreCase("Reader"))
rs=st.executeQuery("select * from reader where name='"+na+"' and (phone='"+cont+"' or mail='"+cont+"')");
if(rs.next()){
%>
<jsp:forward page="secques.jsp" >
<jsp:param name="forgotna" value="<%=na%>" />
</jsp:forward>
<%}
else
{%>
<jsp:forward page="forgot.jsp">
<jsp:param name="a1" value="error" />
</jsp:forward>
<%}
con.close();
}catch(Exception e){out.print(e);}
	%>