<%@ include file="dbcon.jsp" %>
<%! String aid; %>
<%
try{
 ResultSet rs=st.executeQuery("select * from author where aname='"+request.getParameter("aname")+"'");
if(rs.next()){
	out.println("<font color=red size=+1>"+rs.getString(2)+" is Already Exists.</font>");
}else{
	aid="";
	int cnt1=0;
	rs=st.executeQuery("select max(substr(aid,2)) from author");
	try{
		if(rs.next()) {
			cnt1=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt1++;
	if(cnt1>0 && cnt1<10)
		aid="A00000"+cnt1;
	else if(cnt1>9 && cnt1<100)
		aid="A0000"+cnt1;
	else if(cnt1>99 && cnt1<1000)
		aid="A000"+cnt1;
	else if(cnt1>999 && cnt1<10000)
		aid="A00"+cnt1;
	else if(cnt1>999 && cnt1<100000)
		aid="A0"+cnt1;
	else 
		aid="A"+cnt1;

	String qry="insert into author values('"+aid+"','"+request.getParameter("aname")+"','"+request.getParameter("qual")+"','"+request.getParameter("job")+"','"+request.getParameter("desig")+"','"+request.getParameter("award")+"','"+request.getParameter("recog")+"','"+request.getParameter("fname")+"','"+request.getParameter("mail")+"','"+request.getParameter("ph")+"','"+request.getParameter("gen")+"','"+request.getParameter("dob")+"')";
	//out.print(qry);
	st.executeUpdate(qry);
}
con.close();

}catch(Exception ee) {		out.print(ee);    }   
%>  	
	<jsp:forward page="addbook.jsp" />			