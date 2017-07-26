<%@ include file="dbcon.jsp" %>
<%! String qry; %>
<%
try{
 qry="select count(bid),count(distinct catid),count(distinct scatid),count(distinct aid),count(distinct pubid) from book";
 ResultSet rs=st.executeQuery(qry);

 if(rs.next()){
session.setAttribute("total_book",rs.getString(1));
session.setAttribute("total_cat",rs.getString(2));
session.setAttribute("total_scat",rs.getString(3));
session.setAttribute("total_auth",rs.getString(4));
session.setAttribute("total_pub",rs.getString(5));
 }

con.close();
}catch(Exception e){out.print(e);}%>
<jsp:forward page="adminbook1.jsp">
			<jsp:param name="a1" value="error" />
 		</jsp:forward>
				