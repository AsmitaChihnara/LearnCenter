<%@ include file="dbcon.jsp" %>
<%! String qry,pubid,pubname; %>
<%
pubname="";
try{
pubid=(String)session.getAttribute("pubid");
 qry="select * from publisher where pubid='"+pubid+"'";
 ResultSet rs=st.executeQuery(qry);

  if(rs.next()){
     pubname=rs.getString(2);
     session.setAttribute("pubname",pubname);
  %>
<jsp:forward page="books.jsp" />
<%
 }
con.close();
}catch(Exception e){out.print(e);}
	%>				