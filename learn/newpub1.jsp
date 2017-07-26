<%@ include file="dbcon.jsp" %>
<%! String pubid; %>
<%
try{
 ResultSet rs=st.executeQuery("select * from publisher where pubname='"+request.getParameter("pubname")+"'");
if(rs.next()){
	out.println("<font color=red size=+1>"+rs.getString(2)+" is Already Exists.</font>");
}else{
	pubid="";
	int cnt2=0;
    rs=st.executeQuery("select max(substr(pubid,2)) from publisher");
	try{
		if(rs.next()) {
			cnt2=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt2++;
	if(cnt2>0 && cnt2<10)
		pubid="P00000"+cnt2;
	else if(cnt2>9 && cnt2<100)
		pubid="P0000"+cnt2;
	else if(cnt2>99 && cnt2<1000)
		pubid="P000"+cnt2;
	else if(cnt2>999 && cnt2<10000)
		pubid="P00"+cnt2;
	else if(cnt2>999 && cnt2<100000)
		pubid="P0"+cnt2;
	else 
		pubid="P"+cnt2;
	

	String qry="insert into publisher values('"+pubid+"','"+request.getParameter("pubname")+"','"+request.getParameter("address")+"','"+request.getParameter("isbn")+"','"+request.getParameter("mail")+"','"+request.getParameter("ph")+"','"+request.getParameter("type")+"')";
	//out.print(qry);
	st.executeUpdate(qry);
}
con.close();

}catch(Exception ee) {		out.print(ee);    }   
%>  	
	<jsp:forward page="addbook.jsp" />			