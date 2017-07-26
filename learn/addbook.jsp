<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center | Books</title>
<meta charset="utf-8">
<link rel="shortcut icon" href="images/logo2.png">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<script language="javascript">
function verify(){
 if(document.f1.bookname.value==""){
    alert("Enter book name.");
	//document.f2.t5.focus();
	return false;
 }else if(document.f1.au.value==""){
     alert("Enter author name.");
	return false;
 }else if(document.f1.pu.value==""){
     alert("Enter publisher name.");
	return false;
 }else if(document.f1.pg.value==""){
     alert("Enter pages.");
	return false;
 }else if(document.f1.cd.value==""){
     alert("Enter cd.");
	return false;
 }else if(document.f1.dpr.value==""){
     alert("Enter dpr.");
	return false;
 }else if(document.f1.edit.value==""){
     alert("Enter edition.");
	return false;
 }else if(document.f1.pubyr.value==""){
     alert("Enter published year.");
	return false;
 }else if(document.f1.rt.value==""){
     alert("Enter ratings.");
	return false;
 }else 
	return true;
}

</script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page3">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
		     <li><a href="index.jsp">Home</a></li>
			 <li><a href="librarymembers.jsp">Library Members</a></li>
			 <li><a href="bookdetails.jsp">Book Details</a></li>
             <li><a href="aboutus.html">About us</a></li>
             <li class="end"><a href="contacts.jsp">Contact us</a></li>
          </ul>
        </nav>
      
      </div>
      <div class="wrapper">
        <h1><a href="index.jsp" id="logo">Learn Center</a></h1>
      </div>
      <div id="slogan"> We Will Open The World<span>of knowledge for you!</span> </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- content -->
   <div class="main">
    <!-- content -->
    <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2>Admin page<br></h2>
			  <h4>Adding New Book: </h4>
                <div>
				<br>
			<form action="addbook1.jsp" method="post" name="f1">

			<%!
ResultSet rs;
String scatname,catname,catid;
%>
			<%
			scatname="";catname="";catid="";
			String scatid=(String)session.getAttribute("scatid");
			try{ 
rs=st.executeQuery("select * from subcategory where scatid='"+scatid+"'");
 if(rs.next()){
 scatname=rs.getString(3);
 catid=rs.getString(2);
			}
rs=st.executeQuery("select * from category where catid='"+catid+"'");
if(rs.next()){
 catname=rs.getString(2);
			 %>
 
			<table><h3>
<tr>
  <td>Category ID:</td>
  <td><input type="hidden" name="catid" value="<%=catid%>"><%=catid%></td></tr>
  <tr>
  <td>Sub-category ID:</td>
  <td><input type="hidden" name="scatid" value="<%=scatid%>"><%=scatid%></td></tr>
<tr>
  <td>Category Name: </td>
  <td><input type="hidden" name="catname" value="<%=catname%>"><%=catname%></td></tr>
<tr>
  <td>Sub-category Name:</td>
  <td><input type="hidden" name="scatname" value="<%=scatname%>"><%=scatname%></td></tr>
 
<tr>
   <td>Author Name:</td>
    <td> <select name="au">
	<%
	ResultSet rs=st.executeQuery("select * from author order by aname");
	while(rs.next()){%>
			<option value="<%=rs.getString(1)%>" style="border-color:#000099; border-style:groove"><%=rs.getString(2)%></option>
			<%}%>
			</select></td><td>New Author??<a href="newauth.jsp?scatid=<%=scatid%>">Register</a> </td>
</tr>
<tr>
   <td>Publisher Name:</td>
   <td> <select name="pu">
	<%
	rs=st.executeQuery("select * from publisher order by pubname");
	while(rs.next()){%>
			<option value="<%=rs.getString(1)%>" style="border-color:#000099; border-style:groove"><%=rs.getString(2)%></option>
			<%}%>
			</select>    </td><td>New Publisher??<a href="newpub.jsp">Register</a> </td>
</td></tr>
<tr>
   <td>Book Name:</td>
    <td><input type="text" name="bookname" style="border-color:#000099; border-style:groove"></td></tr>
<tr>
   <td>Pages:</td>
    <td><input type="text" name="pg" style="border-color:#000099; border-style:groove"></td></tr>
<tr>
   <td>Ratings:</td>
    <td><input type="text" name="rt" style="border-color:#000099; border-style:groove"></td></tr>
<tr>
   <td>CD:</td>
    <td><input type="text" name="cd" style="border-color:#000099; border-style:groove"></td></tr>
<tr>
   <td>DPR:</td>
    <td><input type="date" name="dpr" style="border-color:#000099; border-style:groove"></td></tr>
<tr>
   <td>Edition:</td>
    <td><input type="text" name="edit" style="border-color:#000099; border-style:groove"></td></tr>
<tr>
   <td>Published Year:</td>
    <td><input type="year" name="pubyr" style="border-color:#000099; border-style:groove"></td></tr>	
<tr>
    <td><input type="submit" value="Go" onClick="return verify()"></td></tr>
</h3></table><br></form>
<br><br>
<%}
else{%> asuni=<%=catid%>=<%=scatid%>=<%=scatname%>
<%}con.close();}catch(Exception e){out.print(e); }%>

				
                  </div>
           
            </div>
          </article>
          <article class="col2 pad_left2">
            <div class="pad_left1">
              <figure><img src="images/page4_img2.jpg" alt=""></figure>
              <p><h3><%=(String)session.getAttribute("name")%><br>Admin</h3><br>
			   <a href="editprofile.jsp" class="button"><span><span>Edit Profile</span></span></a><a href="index.jsp" class="button"><span><span>Log out</span></span></a>
			    <br><br>
			   <ul class="list1">
              <li><a href="adminstaff.jsp">Employee Details</a></li>
              <li><a href="adminbook.jsp">Book Details</a></li>
			  <li><a href="adminreader.jsp">Reader Details</a></li>
  			  <li><a href="request.jsp">Check Requests</a></li>
            </ul>
			  </p>
            </div>
          </article>
        </div>
      </div>
    </section>
    <!-- content -->
    <!-- footer -->
   <footer>
      <div class="wrapper">
        <div class="pad1">
          <div class="pad_left1">
            <div class="wrapper">
              <article class="col_1">
                <h3>Address:</h3>
                <p class="col_address"><strong>Country:<br>
                  City:<br>
                  Address:<br>
                  Email:</strong></p>
                <p>USA<br>
                  San Diego<br>
                  Beach st. 54<br>
                  <a target="_blank" href="http://www.lcenter@gmail.com/">lcenter@gmail.com</a></p>
              </article>
              <article class="col_2 pad_left2">
                <h3>Join In:</h3>
                <ul class="list2">
                  <li><a href="index.jsp">Sign Up</a></li>
                  <li><a href="contacts.jsp">contacts</a></li>
                </ul>
              </article>
              <article class="col_3 pad_left2">
                <h3>Why Us:</h3>
                <ul class="list2">
                  <li>Hundreds of categories</li>
                  <li>Perfect destination of your quest</li>
                  <li>Free downloading service</li>
                  <li>Open 24X7</li>
                </ul>
              </article>
              
            </div>
            <div class="wrapper">
              <article class="call"> <span class="call1">Call Us Now: </span><span class="call2">1-800-567-8934</span> </article>
              <article class="col_4 pad_left2">Copyright &copy; <a target="_blank" href="http://www.lcenter@gmail.com/">Learn Center</a> All Rights Reserved<br>
                Design by <a target="_blank" href="http://www.monasmita.com/">Monasmita.com</a></article>
            </div>
          </div>
            </div>
          
       
    
    <!-- / footer -->

<script type="text/javascript">Cufon.now();</script>
<div align=center></div>
</body>
</html>