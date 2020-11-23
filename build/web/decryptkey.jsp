
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrapper">
  <center><h1>Enter your Decryption  key  </h1><br><br>
                                <form action="decrypt.jsp" name="datauser.jsp"  method="post" >                                
                                    <table align="center" bgcolor="">
                                        <tr>
                                            <td align="center">

                                               	<input type="text" name="prikey" value="" style="width:300px; height: 25px;  color: #544738"/>
                                                <input class="button" type="submit" value=" Decrypt "  />

                                            </td>
                                        </tr>

                                    </table>
                                </form> 
  </center>
        </div>
    </body>
</html>
