

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.tj.mail.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.servlet.http.*" %>
<%@page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Two cloud Secure</title>
    </head>
    <body>
        <%
            int UEid=0;
             String pw=null;
                    UEid=Integer.parseInt(request.getParameter("user"));
                   Class.forName("com.mysql.jdbc.Driver");
           Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
           PreparedStatement ps1=con1.prepareStatement("SELECT keypw FROM  encryfiledetails WHERE fname=(SELECT fname FROM filedetails WHERE fid=?)");
           ps1.setInt(1,UEid);
           ResultSet rs2=ps1.executeQuery();
           if(rs2.next())
           {
                pw=rs2.getString("keypw");
                session.setAttribute("Code",pw);
       
           }
        %>
       <%
           String a=null;

        UEid=Integer.parseInt(request.getParameter("user"));
       System.out.print(UEid+"hhhhhjjjjjjjjjjjjjjjjjjj");
       // String kk=(String)session.getAttribute("Code");
       

       //SELECT keypw FROM  encryfiledetails WHERE fname=(SELECT fname FROM filedetails WHERE fid=8)
       try {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
           PreparedStatement ps=con.prepareStatement("select * from filedetails where fid=?");
           ps.setInt(1,UEid);
    	   ResultSet rs1=ps.executeQuery();
    	   if(rs1.next()){
    		   String to=rs1.getString("uid");
                   System.out.print("User jhgkhjgkjgkj"+to);
                   
                   String dow=rs1.getString("fpath");
                   session.setAttribute("Man",dow);

                   System.out.println("khgjdhgdkjgh"+pw);
    		   Email.MailServer(to,pw); 
                   
    		   response.sendRedirect("decryptkey.jsp");
    		   
    	   }
    	   
       }catch(Exception e){
           
    	   e.printStackTrace();
       }
       
           
       
     
       
       
       %>
    </body>
</html>
