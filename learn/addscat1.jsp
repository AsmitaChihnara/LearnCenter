<%@ include file="dbcon.jsp" %>
<%! String catid,scatname,catname; %>
<%
try{
catname=request.getParameter("catname");
catid=request.getParameter("catid");
scatname=request.getParameter("scatname");
 ResultSet rs=st.executeQuery("select * from subcategory where scatname='"+catname+":"+scatname+"' and catid='"+catid+"'");
if(rs.next()){
	out.println("<font color=red size=+1>"+scatname+" is Already Exists.</font>");
}else{
	String sid="";
	int cnt=0;
    rs=st.executeQuery("select max(substr(scatid,2)) from subcategory");
	try{
		if(rs.next()) {
			cnt=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt++;
	if(cnt>0 && cnt<10)
		sid="S00000"+cnt;
	else if(cnt>9 && cnt<100)
		sid="S0000"+cnt;
	else if(cnt>99 && cnt<1000)
		sid="S000"+cnt;
	else if(cnt>999 && cnt<10000)
		sid="S00"+cnt;
	else if(cnt>999 && cnt<100000)
		sid="S0"+cnt;
	else 
		sid="S"+cnt;

	String qry="insert into subcategory values('"+sid+"','"+catid+"','"+catname+":"+scatname+"')";
	//out.print(qry);
	st.executeUpdate(qry);
}
con.close();

}catch(Exception ee) {		out.print(ee);    }   
%>  <form action="admincategory.jsp">	<input type="hidden" name="t4" value="<%=catid%>"></form>
	<jsp:forward page="adminbook.jsp" />			