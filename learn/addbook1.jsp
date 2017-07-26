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
 if(document.f1.file.value==""){
    alert("Enter file name.");
	//document.f2.t5.focus();
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
			<%! String catid,scatname,catname,scatid,bookname,au,pu,cd,pg,dpr,edit,pubyr,rt; %>
<%
try{
catname=request.getParameter("catname");
catid=request.getParameter("catid");
scatid=request.getParameter("scatid");
scatname=request.getParameter("scatname");
bookname=request.getParameter("bookname");
au=request.getParameter("au");
pu=request.getParameter("pu");
pg=request.getParameter("pg");
dpr=request.getParameter("dpr");
cd=request.getParameter("cd");
edit=request.getParameter("edit");
pubyr=request.getParameter("pubyr");
rt=request.getParameter("rt");

 ResultSet rs=st.executeQuery("select * from book where bookname='"+bookname+"' and catid='"+catid+"' and scatid='"+scatid+"'");
if(rs.next()){
	out.println("<font color=red size=+1>"+scatname+" is Already Exists.</font>");
}else{
	String bid="";
	int cnt=0;
	
    rs=st.executeQuery("select max(substr(bid,2)) from book");
	try{
		if(rs.next()) {
			cnt=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt++;
	if(cnt>0 && cnt<10)
		bid="B00000"+cnt;
	else if(cnt>9 && cnt<100)
		bid="B0000"+cnt;
	else if(cnt>99 && cnt<1000)
		bid="B000"+cnt;
	else if(cnt>999 && cnt<10000)
		bid="B00"+cnt;
	else if(cnt>999 && cnt<100000)
		bid="B0"+cnt;
	else 
		bid="B"+cnt;
	String aid="";
		
		rs=st.executeQuery("select * from author where aid='"+au+"'");
		if(rs.next()){
		aid=rs.getString(1);
		}else{
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
	}
		String pubid="";

	rs=st.executeQuery("select * from publisher where pubid='"+pu+"'");
		if(rs.next()){
		pubid=rs.getString(1);
		}else{
    
	int cnt2=0;
    rs=st.executeQuery("select max(substr(pubid,2)) from publisher");
	try{
		if(rs.next()) {
			cnt2=rs.getInt(1);
	  	}
    }catch(Exception ee){  }
	cnt2++;
	if(cnt2>0 && cnt2<10)
		pubid="P00000"+cnt2;
	else if(cnt2>9 && cnt2<100)
		pubid="P0000"+cnt2;
	else if(cnt2>99 && cnt2<1000)
		pubid="P000"+cnt2;
	else if(cnt2>999 && cnt2<10000)
		pubid="P00"+cnt2;
	else if(cnt2>999 && cnt2<100000)
		pubid="P0"+cnt2;
	else 
		pubid="P"+cnt2;
	}

String qry="insert into book values('"+bid+"','"+bookname+"','"+catid+"','"+scatid+"','"+aid+"','"+pubid+"','"+pg+"','"+rt+"','"+cd+"','"+pubyr+"','"+edit+"','"+dpr+"','')";
	//out.print(qry);
	st.executeUpdate(qry);
session.setAttribute("bid",bid);
	out.print("<br><font color=green size=+1>"+bookname+" Information is Stored. Please Upload book.</font><br />"); 
}
con.close();

}catch(Exception ee) {		out.print(ee);    }   
%>  	

<br />
<FORM ENCTYPE="multipart/form-data" ACTION="upservlet" METHOD="post" name="f1">
<table border="0" bgcolor=#ccFDDEE>
<tr>
	<td colspan="2" align="center"><B>Upload the book</B></td>
</tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr><td><b>Choose the file To Upload:</b></td>
<td><INPUT NAME="file" TYPE="file"></td>
</tr>
<tr><td colspan="2" align="center"> </td></tr>
<tr>
  <td colspan="2" align="center"><input name="submit" type="submit" value="Send File" /></td>
</tr>
</table>
</FORM>



				
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