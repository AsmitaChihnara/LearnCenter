<%@ include file="dbcon.jsp" %>
<%
try{
 int x=st.executeUpdate("update employee set fname='"+request.getParameter("fname")+"', dob='"+request.getParameter("dob")+"', qual='"+request.getParameter("qual")+"', phone='"+request.getParameter("ph")+"', mail='"+request.getParameter("mail")+"', cadd='"+request.getParameter("cadd")+"', padd='"+request.getParameter("padd")+"' where eid='"+request.getParameter("id")+"'");

  if(x!=0){
    out.print("updated successfully");
 }
con.close();
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="adminhome.jsp" />			