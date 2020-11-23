
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Spartan&display=swap" rel="stylesheet">
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.clickme {
    background-color: #EEEEEE;
    padding: 8px 20px;
    text-decoration:none;
    font-weight:bold;
    border-radius:5px;
    color: #10a2ff;
    cursor:pointer;
}
        </style>
    </head>
    <body>
         <%

response.setHeader("Cache-Control","no-cach,no-store,must-revalidate");

if(session.getAttribute("Em")==null){
	response.sendRedirect("Admin.jsp"); 
}


%>
    <center>
        <form action="add">
            <button type="submit" class="clickme danger">Logout</button>
        </form>
    </center>   
    <center><h1 style="font-family: 'Spartan', sans-serif;">List of Shared Candidates</h1></center> 
        <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>GB </th>
            <th>Used Data</th>
        </tr>
        <tr>
        
            
            
            
        <%
  
            String aa=null;
            String kk=null;
            aa=(String)session.getAttribute("id");
             kk=(String)session.getAttribute("cc");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
                PreparedStatement ps=con.prepareStatement("select * from webtab where ide=?");
                ps.setString(1,aa);
                ResultSet rs=ps.executeQuery();
                
                while(rs.next())
                {
                    String a=rs.getString(2);
                    String b=rs.getString(3);
                    String c=rs.getString(5);
                    String d=rs.getString(6);
                    String e=rs.getString(7);
                    %>
                    
                    
<tr style="font-size:large;font-family: serif">
  

                                    <TD style=" text-align: center"><%=a%></a></TD>                                    
                                    <TD style=" text-align: center"><%=b%></a></TD>
                                    <TD style=" text-align: center"><%=c%></a></TD>
                                    <TD style=" text-align: center"><%=d%></a></TD>
                                    <TD style=" text-align: center"><%=e%></a></TD>
                                    


                                    
                                </tr>
                 
                    <%
                        }
                
            }catch(Exception e)
            {
                out.print(e);
            }
        
        %>
            </tr>
        </table>
    
    <%
          aa=(String)session.getAttribute("id");

            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
                PreparedStatement ps1=con1.prepareStatement("select SUM(choose) as dd from webtab where ide=?");
                ps1.setString(1,aa);
                ResultSet rs1=ps1.executeQuery();
                while(rs1.next())
                {
                    String aa1=rs1.getString("dd");
                    %>
                    <h1>Used Storage:<%=aa1%> GB</h1>
                    <h1>Total Storage:<%=kk%> GB</h1>
                    <%
                }
            }catch(Exception exx)
            {
                out.print(exx);
            }
        
    %>
    </body>
</html>
