<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center | Reader Sign Up</title>
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
 if(document.f1.name.value==""||document.f1.fname.value==""||document.f1.dob.value==""||document.f1.ge.value==""||document.f1.ph.value==""||document.f1.mail.value==""||document.f1.job.value==""||document.f1.cadd.value==""||document.f1.padd.value==""||document.f1.pwd1.value==""||document.f1.pwd2.value==""||document.f1.secq.value==""||document.f1.seca.value==""){
    alert("No field can be empty.");
	//document.f2.t5.focus();
	return false;
 }else if(document.f1.pwd1.value!=document.f1.pwd2.value){
 alert("Confirm Your Password Correctly!!");
	//document.f2.t5.focus();
	return false;
 }else if(document.f1.pwd1.value.length < 6 || document.f1.pwd2.value.length < 6){
    alert("Password must be greater than 6.");
	//document.f1.t2.focus();
	return false;
	}else {	
	alert("We will consider your request and will contact you soon.");return true;}
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
              <h2>Sign up: <br>
              </h2>
			  <h4>Register yourself as a new reader:</h4>
                <div>
				<br>
			
			<form action="newreader1.jsp" method="post" name="f1">
			<table><h3>

  <tr><td>Name:</td><td><input type="text" name="name"  style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Father's Name:</td><td><input type="text" name="fname" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>DOB:</td><td><input type="date" name="dob" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Gender:</td><td><input type="radio" name="ge" value="male">Male</td><td><input type="radio" name="ge" value="female">Female</td></tr>
<tr><td>Contact no.:</td><td><input type="text" name="ph"style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Email Id:</td><td><input type="text" name="mail" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Job:</td><td><input type="text" name="job" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Current Address:</td><td><input type="text" class="input" name="cadd" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Permanent Address:</td><td><input type="text" class="input" name="padd"  style="border-color:#000099; border-style:groove"></td></tr><tr></tr>
<tr><td>Set Password:</td><td><input type="password" name="pwd1"  style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Confirm Password:</td><td><input type="password" name="pwd2"  style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Set your security question:</td><td><input type="text" name="secq" class="input" style="border-color:#000099; border-style:groove"></td></tr>
<tr><td>Set answer of your set question:</td><td><input type="text" name="seca" class="input" style="border-color:#000099; border-style:groove"></td></tr>
</h3>
<tr><td></td><td></td><td><input type="submit" value="Go" onClick="return verify()"></td></tr>
<br></table></form>
<br><br>
<% try{
     String z1=request.getParameter("a1");
	 if(z1.equals("error")){ %>
		<font color="red" size="3"><h3>This profile exists!!</h3></font>
<%  } 
   }catch(Exception e) {   }
%>

			
                  </div>
           
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