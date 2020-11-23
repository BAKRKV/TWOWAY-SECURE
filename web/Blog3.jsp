
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
    </head>
    <body>
       
    <center><a href="index.html" class="clickme danger">Logout</a></center> 
            <center><h1 style="font-family: 'Spartan', sans-serif;">List of Shared Candidates</h1></center> 
        <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>GB</th>
            <th>USED </th>
        </tr>
        <tr>
        <%
            String kg=null;
            String aa=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
                PreparedStatement ps=con.prepareStatement("select * from admin");
        
                ResultSet rs=ps.executeQuery();
                
                while(rs.next())
                {
                      kg=rs.getString(1);
                    String a=rs.getString(2);
                    String b=rs.getString(3);
                    String c=rs.getString(5);
                    String d=rs.getString(6);
                    String e=rs.getString(7);
                    
                  
                    
                    %>
                    
                    
                     <%
             String gg=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
                PreparedStatement ps1=con1.prepareStatement("select SUM(Used) as Data from webtab where ide="+kg+"");
                ResultSet rs1=ps1.executeQuery();
                while(rs1.next())
                {
                     gg=rs1.getString("Data");
                }
                
                Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
                PreparedStatement ps2=con2.prepareStatement("update admin set Used="+gg+" where id=?");
                ps2.setString(1,kg);
                
                ps2.executeUpdate();
                
                
            }catch(Exception k)
            {
                out.print(k);
            }
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
       
        
    </body>
</html>
