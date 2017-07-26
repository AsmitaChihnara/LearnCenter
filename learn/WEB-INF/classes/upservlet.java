import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class upservlet extends HttpServlet{ 
     public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
     response.setContentType("text/html");
     PrintWriter out = response.getWriter();
     String res="";
try{
    String saveFile="";
    String contentType = request.getContentType();
    if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
    DataInputStream in = new DataInputStream(request.getInputStream());
    int formDataLength = request.getContentLength();
    byte dataBytes[] = new byte[formDataLength];
    int byteRead = 0;
    int totalBytesRead = 0;
     while(totalBytesRead < formDataLength){
        byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
        totalBytesRead += byteRead;
    }
    String file = new String(dataBytes);
    saveFile = file.substring(file.indexOf("filename=\"") + 10);
    saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
    saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
    int lastIndex = contentType.lastIndexOf("=");
    String boundary = contentType.substring(lastIndex + 1,contentType.length());
    int pos;
    pos = file.indexOf("filename=\"");
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    pos = file.indexOf("\n", pos) + 1;
    int boundaryLocation = file.indexOf(boundary, pos) - 4;
    int startPos = ((file.substring(0, pos)).getBytes()).length;
    int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

   HttpSession ss= request.getSession();
   String bid=(String) ss.getAttribute("bid");
   saveFile = bid + saveFile.substring(saveFile.lastIndexOf('.'));
  
String zz   =".//webapps//learn//books//"+saveFile;
String zzz =".//webapps//learn//books//";
System.out.println(zz);
/* saveFile holding the image/video filename, now get the index of . from savefile -> use this value  to substring from savefile to get extention. then attach the vname, imgname from database table with the extention. now this new file name must be stored in saveFile and  in database*/
//  out.println(zz);   
    File ff = new File(zz);
    FileOutputStream fileOut = new FileOutputStream(ff);
    fileOut.write(dataBytes, startPos, (endPos - startPos));
    fileOut.flush();
    fileOut.close();
 //   out.println("You have successfully upload the file:"+saveFile);
  
    Connection con = null;
    String connectionURL = "jdbc:mysql://localhost/learn";
    ResultSet rs = null;
    Statement st = null;
  
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection(connectionURL, "root", "");
    st = con.createStatement();

        rs = st.executeQuery("select * from book where bid='"+bid+"'");
        try{
            if(rs.next()){
                 String oldFile  = rs.getString("filename");
	File fff = new  File(zzz+oldFile);
	System.out.println("<br> old File : " + zzz +":"+oldFile);

	System.out.println("<br> new File : " + zzz+":"+saveFile);
	if(!saveFile.equalsIgnoreCase(oldFile)){
     	       fff.delete();
  	}
           } 
       }catch(Exception eee){  }
    String qry="update book set filename='"+saveFile+"'  where bid='"+bid+"'";
    int s = st.executeUpdate(qry);
    con.close();
  }
}catch(Exception e){      System.out.print(e);     }
    RequestDispatcher rd   = request.getRequestDispatcher("./adminbook.jsp");
    rd.forward(request, response);
}};
