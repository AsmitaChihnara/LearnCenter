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
function verify1(){
 if(document.f2.t4.value==""){
    alert("Select any one category.");
	//document.f2.t4.focus();
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
			  <h4>Book Details:</h4>
                <div>
				 <form action="admincategory.jsp" method="post" name="f2">
				 
				 
			<h3>	 
			We have total <%=(String)session.getAttribute("total_book")%> books including <%=(String)session.getAttribute("total_cat")%> categories, total of <%=(String)session.getAttribute("total_scat")%> subcategories, books of <%=(String)session.getAttribute("total_auth")%> different authors and from <%=(String)session.getAttribute("total_pub")%> different publishers.</h3>
			<br><h2 class="font2">Choose the category of books you want to know the details</h2>
			<div class="wrapper pad_bot2">
			              <p class="pad_top2"><strong><h2 class="box1"> 
			<%
			ResultSet rs=st.executeQuery("select * from category");
			while(rs.next()){
		
			%>
						 <br><input type="radio" name="t4" value='<%=rs.getString(1)%>'><%=rs.getString(2)%>
						 
			<%}%>
			 <br><input name="submit" type="submit" value="Go" onClick="return verify1()"></h2>
			</form>
			<a href="addcat.jsp" class="button"><span><span>Add new category</span></span></a>

			<% try{
     String z1=request.getParameter("a1");
	 if(z1.equals("error")){ %>
		<font color="red" size="3"></font>
<%  } 
   }catch(Exception e) {   }
%>
				<br>
			
				
				
				
				
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