<%@ include file="dbcon.jsp" %>
<%int x=0;
try{
if(request.getParameter("newpwd1").equals(request.getParameter("newpwd2"))){
x=st.executeUpdate("update login set pwd='"+request.getParameter("newpwd1")+"' where logname='"+(String)session.getAttribute("name")+"' and pwd='"+request.getParameter("oldpwd")+"'");}
con.close();
}catch(Exception e){out.print(e);}
 if(x>0){%><html><body>
  <article class="col2 pad_left2">
            <div class="pad_left1">
    <font color="#FFFFFF"><strong>Password changed successfully.</strong></font>
	 </div>
          </article></body></html>
	<jsp:include page="emphome.jsp" />
 	
<%}
else{%>
<html><body>
  <article class="col2 pad_left2">
            <div class="pad_left1">
    <font color="#FFFFFF"><strong>Failed to change password.</strong></font>
	 </div>
          </article></body></html>
		<jsp:include page="emphome.jsp" >
 <jsp:param name="a1" value="error" />
 		</jsp:include>
		<%}%>	