<%@ include file="dbcon.jsp" %>
<%! String ser,qry,aid,pubid; %>
<%
aid="";
pubid="";
ser=request.getParameter("ser");
try{
out.print(ser+"_________");
 qry="select * from book where bookname='"+ser+"'";
 ResultSet rs=st.executeQuery(qry);
  if(rs.next()){
out.print("yes");
     session.setAttribute("bid",rs.getString(1));
     aid=rs.getString(5);
     pubid=rs.getString(6);
qry="select * from author where aid='"+aid+"'";
 rs=st.executeQuery(qry);
 if(rs.next()){
 out.print("asuchi........");
    String aname=rs.getString(2);
     session.setAttribute("aname",aname);
    }
	qry="select * from publisher where pubid='"+pubid+"'";
 rs=st.executeQuery(qry);

  if(rs.next()){
   out.print("asuchi........");
    String pubname=rs.getString(2);
     session.setAttribute("pubname",pubname);
 }
con.close();
%>	<jsp:forward page="readerbooks.jsp" />
<%
}else{%>
<html><body>
  <article class="col2 pad_left2">
            <div class="pad_left1">
    <font color="#FFFFFF"><strong>Sorry, <%=ser%> is not available.</strong></font>
	 </div>
          </article></body></html>
		<jsp:include page="readerhome.jsp" >
 <jsp:param name="a1" value="error" />
 		</jsp:include>
<%}
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="readerhome.jsp" />
				