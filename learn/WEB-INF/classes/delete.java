import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class delete extends HttpServlet{ 
     public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
      response.setContentType("text/html");
     PrintWriter out = response.getWriter();
     String res="";
try{
    Connection con = null;
    String connectionURL = "jdbc:mysql://localhost/learn";
    ResultSet rs = null;
    Statement st = null;
  
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(connectionURL, "root", "");
    st = con.createStatement();

 HttpSession ss= request.getSession();
   String bid=(String) ss.getAttribute("bid");

String zzz =".//webapps//learn//books//";
        rs = st.executeQuery("select * from book where bid='"+bid+"'");
        try{
            if(rs.next()){
                 String oldFile  = rs.getString("filename");
	File fff = new  File(zzz+oldFile);
	System.out.println("<br> old File : " + zzz +":"+oldFile);
     	       fff.delete();
           } 
       }catch(Exception eee){  }
    String qry="delete from book  where bid='"+bid+"'";
    int s = st.executeUpdate(qry);
    con.close();

}catch(Exception e){      System.out.print(e);     }
    RequestDispatcher rd   = request.getRequestDispatcher("./adminbook.jsp");
    rd.forward(request, response);
}};
