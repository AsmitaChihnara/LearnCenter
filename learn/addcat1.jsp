<%@ include file="dbcon.jsp" %>
<%! String catid,catname; %>
<%
try{
catname=request.getParameter("catname");
 ResultSet rs=st.executeQuery("select * from category where catname='"+catname+"'");
if(rs.next()){
	out.println("<font color=red size=+1>"+catname+" is Already Exists.</font>");
}else{
	catid="";
	int cnt=0;
    rs=st.executeQuery("select max(substr(catid,2)) from category");
	try{
		if(rs.next()) {
			cnt=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt++;
	if(cnt>0 && cnt<10)
		catid="C00000"+cnt;
	else if(cnt>9 && cnt<100)
		catid="C0000"+cnt;
	else if(cnt>99 && cnt<1000)
		catid="C000"+cnt;
	else if(cnt>999 && cnt<10000)
		catid="C00"+cnt;
	else if(cnt>999 && cnt<100000)
		catid="C0"+cnt;
	else 
		catid="C"+cnt;

	String qry="insert into category values('"+catid+"','"+catname+"')";
	//out.print(qry);
	st.executeUpdate(qry);
}
con.close();

}catch(Exception ee) {		out.print(ee);    }   
%>  	
	<jsp:forward page="adminbook.jsp" />			