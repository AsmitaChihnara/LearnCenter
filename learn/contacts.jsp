<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center | Contacts</title>
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
<body id="page5">
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
    <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2>Contact Form</h2>
              <form id="ContactForm" action="#">
                <div>
                  <div  class="wrapper"> <strong>Name:</strong>
                    <div class="bg">
                      <input type="text" class="input" >
                    </div>
                  </div>
                  <div  class="wrapper"> <strong>Email:</strong>
                    <div class="bg">
                      <input type="text" class="input" >
                    </div>
                  </div>
                  <div  class="textarea_box"> <strong>Message:</strong>
                    <div class="bg">
                      <textarea name="textarea" cols="1" rows="1"></textarea>
                    </div>
                  </div> <a href="#" class="button"  onClick="return verify()"><span><span>Send</span></span></a> <a href="#" class="button"><span>
                 <span>Clear</span></span></a> </div>
              </form>
            </div>
          </article>
          <article class="col2 pad_left2">
            <div class="pad_left1">
              <h2>Miscellaneous</h2>
              <h2> <span>Info</span></h2>
              <p>Come,Get into the world of knowledge online. With a wide collection of books ranging from course books and general knowledge stuffs to fashion, life and novels,LearnCenter helps you read books of your desire along with its general details! This also gives you the freedom to create your own profile & upload or download any books of your choice!! So let's step into the knowledge world!!</p>
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