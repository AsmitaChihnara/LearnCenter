<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center</title>
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
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
<style type="text/css">
<!--
.style2 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-style: italic;
}
.style3 {font-weight: bold; font-family: Arial, Helvetica, sans-serif;}
-->
</style>
<script language="javascript">
function verify(){
 if(document.f1.t1.value==""){
    alert("Enter User name.");
	document.f1.t1.focus();
	return false;
 }else if(document.f1.t2.value==""){
    alert("Enter Password.");
	document.f1.t2.focus();
	return false;
 }else if(document.f1.t2.value.length < 6){
    alert("Password must be greater than 6.");
	document.f1.t2.focus();
	return false;
 }else 
	return true;
}
</script>
</head>
<body id="page1">
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
        <ul id="icon">
          <li><a target="_blank" href="http://www.facebook.com/"><img src="images/icon1.jpg" alt=""></a></li>
          <li><a target="_blank" href="http://www.wechat.com/"><img src="images/icon2.jpg" alt=""></a></li>
          <li><a target="_blank" href="http://www.twitter.com/"><img src="images/icon3.jpg" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <h1><a href="index.jsp" id="logo">Learn Center</a></h1>
      </div>
      <div id="slogan"> 
        <div align="left">
          <p>&nbsp;</p>
          <p>We Will Open The World</p>
          <p><span>of knowledge for you!</span> </p>
        </div>
      </div>
	  <div align="justify"><span class="style2"><u><span class="style1"><br>
	 <br>
	  </u></span><br>
	
      </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- content -->
    <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2>Welcome to Our Center</h2>
              <p class="font2">Learn Center is one of free website for online studying created by <span>learncenter.com team</span></p>
              <p><strong>Learn Center</strong> is a free facility available for all people who want to grasp all the knowledge. </p>
            </div>
            <div class="pad_left1">
              <h2>Individual Approach to Education!</h2>
            </div>
            <div class="wrapper">
              <figure class="left marg_right1"><img src="images/page1_img4.jpg" alt=""></figure>
              <p class="pad_bot1 pad_top2"><strong>Explore the world through the tiny window.</strong></p>
              <p> Come,Get into the world of knowledge online. With a wide collection of books ranging from course books and general knowledge stuffs to fashion, life and novels,LearnCenter helps you read books of your desire along with its general details! This also gives you the freedom to create your own profile &amp; upload or download any books of your choice!! So let's step into the knowledge world!!</p>
            </div>
            <div class="pad_top2"></div>
          </article><br>
        
		
		
		 <table  bgcolor="#FFCCCC" border="2" bordercolordark="black">
		  <tr>
		<td width="10"></td>
		<td width="305" bordercolor="#000000" class="banners">
        <font color="black" size="4">Registered User Sign In:  </font><br><br> 
        <form  action="login.jsp" name="f1" method="post">
 <input type="text"  name="t1" size="15" placeholder="Enter User Name" style="border-color:#000099; border-style:groove;margin:10px"> <input type="password" name="t2" size="15" placeholder="Enter Password" style="border-color:#000099; border-style:groove;margin:10px"> <input name="submit" type="submit" value="Go" onClick="return verify()">
        </form> 
		<% try{
     String z1=request.getParameter("a1");
	 if(z1.equals("error")){ %>
		<font color="red" size="3">Incorrect username or password!! Try Again!!</font>
<%  } 
   }catch(Exception e) {   }
%>
   <br>
Forgot Password ? <a href="forgot.jsp">Need Help !!</a></font><br />
	Sign up as &nbsp;&nbsp;&nbsp;<font color="#0000CC"><a href="newreader.jsp?p1="> Reader</a> | <a href="newemp.jsp?p1="> Employee</a></font></td></tr></table>
	
	
	
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