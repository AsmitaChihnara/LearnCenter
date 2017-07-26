<%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Learn Center | Members</title>
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
</head>
<body id="page4">
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
        <h1><a href="index.html" id="logo">Learn Center</a></h1>
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
              <h2 class="pad_bot1">OUR LIBRARY MEMBERS </h2>
 <%!
String type;
ResultSet rs;
%>
<%
type=request.getParameter("t3"); 
try{ 
if(type.equalsIgnoreCase("admins"))
rs=st.executeQuery("select * from employee where desig='admin'");
else if(type.equalsIgnoreCase("faculties"))
rs=st.executeQuery("select a.* from employee a inner join login b on a.eid=b.id where a.desig='faculty' and b.status='y'");
else if(type.equalsIgnoreCase("employees"))
rs=st.executeQuery("select a.* from employee a inner join login b on a.eid=b.id where a.desig<>'admin' and a.desig<>'faculty' and b.status='y'");
%>
<h2><%=type%></h2>
 <% 
 while(rs.next()){%>
 <div class="wrapper pad_bot2">
<figure class="left marg_right1"><img src="images/page4_img1.jpg" alt=""></figure>
<p class="pad_top2"><strong>
<table>
<tr><td><%=type%> name:</td><td><%=rs.getString(2)%></td></tr>
<tr><td>Gender:</td><td><%=rs.getString(5)%></td></tr>
<tr><td>Contact no.:</td><td><%=rs.getString(6)%></td></tr>
<tr><td>Email ID:</td><td><%=rs.getString(7)%></td></tr>
<tr><td>Qualification:</td><td><%=rs.getString(8)%></td></tr>
<tr><td>Designation:</td><td><%=rs.getString(9)%></td></tr>
</table>
<% } }catch(Exception e){out.print(e); }
%><strong></strong>
			
            </div>
            
            
          
          
        </div>
      </div>
    
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