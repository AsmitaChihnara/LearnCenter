<%@ include file="dbcon.jsp" %>
<%! String qry,aid,aname; %>
<%
aname="";
try{
aid=(String)session.getAttribute("aid");
 qry="select * from author where aid='"+aid+"'";
 ResultSet rs=st.executeQuery(qry);

  if(rs.next()){
     aname=rs.getString(2);
     session.setAttribute("aname",aname);
  %>
<jsp:forward page="book2.jsp" />
<%
 }
con.close();
}catch(Exception e){out.print(e);}
	%>				