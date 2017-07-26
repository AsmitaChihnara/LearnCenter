<%@ include file="dbcon.jsp" %>
<%! String bid,qry,aid,pubid; %>
<%
aid="";
pubid="";
bid=request.getParameter("t6");
try{
out.print(bid+"_________");
 qry="select * from book where bid='"+bid+"'";
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
 }}
con.close();
}catch(Exception e){out.print(e);}
	%>
	<jsp:forward page="booksedit.jsp" />
				