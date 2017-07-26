<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center | Edit Profile</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
<script language="javascript">
function verify(){
 if(document.f1.fname.value==""||document.f1.dob.value==""||document.f1.ph.value==""||document.f1.mail.value==""||document.f1.job.value==""||document.f1.cadd.value==""||document.f1.padd.value==""){
    alert("No field can be empty.");
	//document.f2.t5.focus();
	return false;
 }else 
	return true;
}
</script>
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
              <h2>Reader page<br></h2>
			  <h4>Edit Profile:</h4>
                <div>
				<br>
			<%!
ResultSet rs;
%>
			<%
			String name=(String)session.getAttribute("name");
			try{ 
rs=st.executeQuery("select * from reader where name='"+name+"'");
 if(rs.next()){
			%>
			<form action="reditprofile1.jsp" method="post" name="f1">
			<table><h3>
<tr><td>ID:</td><td><input type="hidden" name="id" value="<%=rs.getString(1)%>"><%=rs.getString(1)%></td></tr>
<tr><td>Name:</td><td><input type="hidden" name="name" value="<%=rs.getString(2)%>"><%=rs.getString(2)%></td></tr>
<tr><td>Father's Name:</td><td><input type="text" name="fname" value="<%=rs.getString(3)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>DOB:</td><td><input type="text" name="dob" value="<%=rs.getString(4)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Contact no.:</td><td><input type="text" name="ph" value="<%=rs.getString(6)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Email Id:</td><td><input type="text" name="mail" value="<%=rs.getString(7)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Job:</td><td><input type="text" name="job" value="<%=rs.getString(8)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Current Address:</td><td><input type="text" name="cadd" value="<%=rs.getString(9)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Permanent Address:</td><td><input type="text" name="padd" value="<%=rs.getString(10)%>" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td><input type="submit" value="Go" onClick="return verify()"></td></tr>
</h3></table><br></form>
<br><br>
<% }
 con.close();}catch(Exception e){out.print(e); }%>

	 <a href="rchangepwd.jsp" class="button"><span><span>Change Password</span></span></a>			
                  </div>
           
            </div>
          </article>
          <article class="col2 pad_left2">
            <div class="pad_left1">
              <figure><img src="images/page4_img3.jpg" alt=""></figure>
              <p><h3><%=(String)session.getAttribute("name")%><br>Reader</h3><br>
			   <a href="reditprofile.jsp" class="button"><span><span>Edit Profile</span></span></a><a href="index.jsp" class="button"><span><span>Log out</span></span></a>
			    <br><br>
			   
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