<%@ include file="dbcon.jsp" %>
<%! 
ResultSet rs;
String id,name,fname,dob,ge,ph,ma,qual,desig,cadd,padd; 
int x=0,y=0;%>
<%
try{
name=request.getParameter("name");
fname=request.getParameter("fname");
dob=request.getParameter("dob");
ge=request.getParameter("ge");
ph=request.getParameter("ph");
ma=request.getParameter("mail");
qual=request.getParameter("qual");
desig=request.getParameter("desig");
cadd=request.getParameter("cadd");
padd=request.getParameter("padd");
id="";
	int cnt=0;
	rs=st.executeQuery("select * from employee where name='"+name+"' and phone='"+ph+"'");
	if(rs.next()){%>
	<jsp:forward page="newemp.jsp">
<jsp:param name="a1" value="error" />

 		</jsp:forward>
	<%
	}else{
    rs=st.executeQuery("select max(substr(eid,2)) from employee");
	try{
		if(rs.next()) {
			cnt=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt++;
	if(cnt>0 && cnt<10)
		id="E00000"+cnt;
	else if(cnt>9 && cnt<100)
		id="E0000"+cnt;
	else if(cnt>99 && cnt<1000)
		id="E000"+cnt;
	else if(cnt>999 && cnt<10000)
		id="E00"+cnt;
	else if(cnt>999 && cnt<100000)
		id="E0"+cnt;
	else 
		id="E"+cnt;
		String qry="insert into employee values('"+id+"','"+name+"','"+fname+"','"+dob+"','"+ge+"','"+ph+"','"+ma+"','"+qual+"','"+desig+"','"+cadd+"','"+padd+"','')";
	//out.print(qry);
	x=st.executeUpdate(qry);
	if(x!=0){
	String qry1="insert into login values('"+id+"','"+name+"','"+request.getParameter("pwd1")+"','employee','n','"+request.getParameter("secq")+"','"+request.getParameter("seca")+"')";
	//out.print(qry);
	y=st.executeUpdate(qry1);
	out.print("<br><font color=green size=+1> We will consider your request and will contact you soon.</font><br />"); 
	
}}con.close();

}catch(Exception ee) {		out.print(ee);    }   
%> <jsp:forward page="index.jsp" />