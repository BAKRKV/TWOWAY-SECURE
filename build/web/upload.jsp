
<%@page import="java.nio.file.Path"%>
`<%@page import="com.tj.twofish.JCEEncryptDecrypt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.swing.JOptionPane"%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.IOException" %>
<%@page import="java.nio.file.Files" %>
<%@page import="java.nio.file.Paths" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Guru File Upload</title>
</head>
<body>
<%
      String Uiid=(String)session.getAttribute("userid");
      String path= request.getSession().getServletContext().getRealPath("/");
	String patt=path.replace("\\build", "");
        System.out.print("ANIL --->"+path);

		String p=patt+"\\files";
	
	MultipartRequest m=new MultipartRequest(request, p);
	
	String filepath=""+m.getFile("f1"); 
        
        
        
        
   	
     long aa1=0;
     Path pp = Paths.get(filepath);
     String pt=pp.toString();
     System.out.println(pt);
     String file = pp.getFileName().toString();
     
     File aa=new File(filepath);
      aa1=aa.length();
     String size=aa1+"";
     
     
     System.out.println(file);
     
       Random r1 = new Random();
             String prikey="";
                char random_Char ;
          for(int i=0; i<10;i++)
             { 
               random_Char = (char) (48 + r1.nextInt(74));
                prikey=prikey+random_Char;
             }
     System.out.println("Output is"+prikey);
     session.setAttribute("prikey",prikey);
     
     
     

     
     
     
     
     try{
     if((file != "") && (filepath!=""))  {
        
           
           //Statement statement = conn.createStatement();
              Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
            String query3 = "Select fname,fpath from filedetails where fname=?";
            PreparedStatement check = conn.prepareStatement(query3);
            check.setString(1, file);
            ResultSet rs = check.executeQuery();
            if (rs.next()) {

                JOptionPane.showMessageDialog(null, "Avoid Depulicate files... ");
                response.sendRedirect("fileupload.jsp");

            } else {
     
     String query1="insert into filedetails(fname,fpath,uid,size)values(?,?,?,?)";
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
     PreparedStatement stat = con.prepareStatement(query1);                     
                         
     stat.setString(1, file);  
     stat.setString(2, filepath);  
     stat.setString(3, Uiid);
     stat.setString(4, size);
     stat.executeUpdate();
     
     
     
     	 String path1= request.getSession().getServletContext().getRealPath("/");
    		String patt1=path1.replace("\\build", "");
     
      String p1=patt1+"\\Encryption\\enc"+file;
                 
      JCEEncryptDecrypt.encrypt(filepath, prikey, p1);
     
      session.setAttribute("enpath", p1);
      
       Random random = new Random();
        int num = random.nextInt(100000);
        String formatted = String.valueOf(num);
        System.out.println(formatted);
        
        session.setAttribute("Code",formatted);
      
      
      
      String query="insert into encryfiledetails(fname,fpath,prikey,keypw) values(?,?,?,?)";
      PreparedStatement sta = con.prepareStatement(query);                     
                          
      sta.setString(1, file);  
      sta.setString(2, p1);      
      sta.setString(3, prikey);
      sta.setString(4, formatted);
      sta.executeUpdate();
       
      
         
     response.sendRedirect("Cloud.jsp");
     
     
	}
     }else{
         JOptionPane.showMessageDialog(null, " Select file first!!!");
     response.sendRedirect("Files.jsp");
     }
}catch(Exception e) {
		 System.out.println("nulll");
		e.printStackTrace();
		
	}
%>

</body>
</html>
     
     
     
     
           
     
     
               
         
         