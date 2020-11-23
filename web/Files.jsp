
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.ap1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstr/3.3.7/js/bootstrap.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
        <style>
                                     	body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;
  }
 
  .navbar {
      margin-bottom: 0;
      background-color: #f4511e;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  
  .button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
        </style>
    </head>
    <body>
        
<%

response.setHeader("Cache-Control","no-cach,no-store,must-revalidate");

if(session.getAttribute("userid")==null){
	response.sendRedirect("LoginS.jsp"); 
}


%>
         <div class="container-fluid">
        <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Rk</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="Blog1.jsp">HOME</a></li>
        <li><a href="Cloud.jsp">CLOUD</a></li>
        <li><a href="Files.jsp">MY CLOUD</a></li>
         <li>
        <form action="Logout">
            <button class="button" type="submit">LOGOUT</button>
        </form>
            </li>
      </ul>
    </div>
  </div>
</nav>
</div>
        
        
        
<div id="wrapper">
  
  <center> 
         <TABLE  border="1">
            
                                <h2 style="font-size: x-large;color: #8B0000; font-family: sans-serif " align="center">File Details</h2><br>
                                    
                                
                               <tr style="font-size:large;color: #8B0000;font-family: serif">
                                    <TH  style=" text-align: center">File Name</TH>
                                     <TH  style=" text-align: center">File Path</TH>
                                    <TH  style=" text-align: center">Download</TH>
    
                                </tr>






<%
          String Uiid=(String)session.getAttribute("userid");
           int i=1;
           try
           {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement st=con.prepareStatement("select * from filedetails where uid=?");
        st.setString(1,Uiid);
	ResultSet rs=st.executeQuery();

	while(rs.next()){
                String userid=rs.getString("fname");
		String fname=rs.getString("fpath");
                String kk=rs.getString("uid");
                int gg=rs.getInt("fid");

          

%>

<tr style="font-size:large;font-family: serif">

                                    <TD style=" text-align: center"><%=userid%></a></TD>                                    
                                    <TD style=" text-align: center"><%=fname%></a></TD>
                                    <TD style=" text-align: center"><a href="like.jsp?user=<%=gg%>">DOWNLOAD</a></TD>
                                    


                                    
                                </tr>
                                <% }
}catch(Exception e)
{
out.print(e);
}
                                
                                
                                
                                %>
              </TABLE> 
       </center>
		</div>
              

    </body>
</html>
