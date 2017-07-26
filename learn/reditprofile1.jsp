<%@ include file="dbcon.jsp" %>
<%
int x=0;
try{
 x=st.executeUpdate("update reader set fname='"+request.getParameter("fname")+"', dob='"+request.getParameter("dob")+"', job='"+request.getParameter("job")+"', phone='"+request.getParameter("ph")+"', mail='"+request.getParameter("mail")+"', cadd='"+request.getParameter("cadd")+"', padd='"+request.getParameter("padd")+"' where rid='"+request.getParameter("id")+"'");
 con.close();

  if(x!=0){%>
<html><body>
  <article class="col2 pad_left2">
            <div class="pad_left1">
    <font color="#FFFFFF"><strong>Updated successfully.</strong></font>
	 </div>
          </article></body></html>
	<jsp:include page="readerhome.jsp" /> 
	<%}else{%>
<html><body>
  <article class="col2 pad_left2">
            <div class="pad_left1">
    <font color="#FFFFFF"><strong>Failed to update.</strong></font>
	 </div>
          </article></body></html>
		<jsp:include page="readerhome.jsp" >
 <jsp:param name="a1" value="error" />
 		</jsp:include>
		<%} }catch(Exception e){out.print(e);}
%>	