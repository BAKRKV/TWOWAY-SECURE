<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%
    String a=request.getParameter("kk");
    String b=request.getParameter("kk1");


    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps=con.prepareStatement("select * from admin where Email=? and password=?");
        ps.setString(1,a);
        ps.setString(2,b);
        ResultSet rs=ps.executeQuery();
        
        if(rs.next())
        {
            String aa=rs.getString(1);
            session.setAttribute("id",aa);
            String ak=rs.getString(6);
            session.setAttribute("cc",ak);
            
            String Em=rs.getString(3);
            session.setAttribute("Em",Em);
            response.sendRedirect("AdminBlog.jsp");
        }
        else
        {
            response.sendRedirect("Login.jsp");
             
        }
        
    }catch(Exception ex)
    {
        out.print(ex);
    }

%>