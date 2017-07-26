<%@ include file="dbcon.jsp" %>
<%! String na,pwd,type,qry; %>
<%
na=request.getParameter("t1");
pwd=request.getParameter("t2");
try{
type="";
 qry="select * from login where logname='"+na+"' and pwd='"+pwd+"' and status='y'";
 out.print(qry);
 ResultSet rs=st.executeQuery(qry);

  if(rs.next()){
     session.setAttribute("uid",rs.getString(1));
     session.setAttribute("name",na);
     type=rs.getString("type"); 
     session.setAttribute("type",type);
 }
con.close();
}catch(Exception e){out.print(e);}
	if(type.equalsIgnoreCase("admin"))  {     %>
		<jsp:forward page="adminhome.jsp" />
<%	}else if(type.equalsIgnoreCase("reader"))  {       %>
		<jsp:forward page="readerhome.jsp" />
<%	}else if(type.equalsIgnoreCase("employee"))  {       %>
		<jsp:forward page="emphome.jsp" />
<%	}else if(type.equalsIgnoreCase("faculty"))  {     %>
		<jsp:forward page="fachome.jsp" />
<%	}else {   %>
		<jsp:forward page="index.jsp">
			<jsp:param name="a1" value="error" />
 		</jsp:forward>
<%	}	%>				