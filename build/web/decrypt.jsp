<%@page import="java.nio.file.Path"%>
<%@page import="com.tj.twofish.JCEEncryptDecrypt"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <title>Guru File Upload</title>
    </head>
    <body>
        <%
      String Uiid=(String)session.getAttribute("userid");
      String kk=(String)session.getAttribute("Code");
      
      System.out.print(Uiid+"wweelvomr van some");
      System.out.print(kk+"hgggggggggggjjjjjjf");
      %>
      <%
          
         try
         {
          Class.forName("com.mysql.jdbc.Driver");
          Connection st=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
          PreparedStatement ps=st.prepareStatement("select fname,fpath from encryfiledetails where keypw='"+kk+"'");
	  ResultSet rs=ps.executeQuery();	
	  if(rs.next()){
		  String fn=rs.getString(1);
                  System.out.print(fn+"jhgdkjhkjhdkjkdjgjhjghjhjhgdkdlhdlhdhgljl");
		  String epath=rs.getString(2);
                  System.out.print(epath+"djfhjkdglsdhglskdjghjslkdgh");
                  
                
	  	session.setAttribute("fname",fn);
	  
	  String path= request.getSession().getServletContext().getRealPath("/");
		String patt=path.replace("\\build", "");
		 
		
		  	String p=patt+"\\Decryption\\dec"+fn;
		
		  	JCEEncryptDecrypt.decrypt(epath,kk,p);
                        String pt=patt+"\\files\\"+fn;
		  	session.setAttribute("dpath",pt);
                        


                        response.sendRedirect("download.jsp");
	  }
    	   
       }catch(Exception e){
    	   e.printStackTrace();
       }


%>

    </body>
</html>