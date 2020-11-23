
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
        <li><a href="cloud.jsp">CLOUD</a></li>
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
        
        
        <div class="container">
            <FORM align="center" enctype="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
           
                
                            <table width="500" align="center" >
                                
                                <tr>
                                    
                                    <td><h2> Select a document here </h2>  <INPUT  type="file" name="f1"  /></td>
                                    
                                </tr>
                               
                                <tr>
                                    
                                    <td align="center"><br><br>
                                        <INPUT TYPE="submit" VALUE="Upload" style="border-style: none; height: 70px; width: 200px" />
                                        <br><span style="font-weight: bold">Click here to upload</span></td>
                                </tr>
                              

                                
                                    
                                
                            </table>  
                        </FORM> 
 
        </div>
        
    </body>
</html>
