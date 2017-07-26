<%@ include file="dbcon.jsp" %>
<%! String bid,qry,aid,pubid; %>
<%
aid="";
pubid="";
bid=request.getParameter("t6");
try{
 qry="select * from book where bid='"+bid+"'";
 ResultSet rs=st.executeQuery(qry);
  if(rs.next()){
out.print("yes");
     session.setAttribute("bid",rs.getString(1));
     aid=rs.getString(5);
     pubid=rs.getString(6);
     session.setAttribute("aid",aid);
     session.setAttribute("pubid",pubid);
  %>
<jsp:forward page="book1.jsp" />
<%
 }
con.close();
}catch(Exception e){out.print(e);}
	%>				