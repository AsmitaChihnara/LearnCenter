<%@ include file="dbcon.jsp" %>
<%!
ResultSet rs;
String ques,na;
%>
<%
na=request.getParameter("forgotna");
try{
rs=st.executeQuery("select secques from login where logname='"+na+"'");
if(rs.next())
ques=rs.getString(1);
%>
<input type="hidden" name="ques" value="<%=ques%>">
<jsp:forward page="secques.jsp" />
<%
con.close();
}catch(Exception e){out.print(e);}
	%>