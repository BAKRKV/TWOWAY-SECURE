
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>     
        <h1>Forgot details</h1>
<form action="forgotDB.jsp">
  <label for="fname">Email ID</label>
  <input type="email" id="fname" name="name" required=""><br><br>
  <label for="lname">PIN</label>
  <input type="text" id="lname" name="PIN" required="" pattern="[0-9]{4}"><br><br>
  <input type="submit" value="Submit">
</form>
        </center>
    </body>
</html>
