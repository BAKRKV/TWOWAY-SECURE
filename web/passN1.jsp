<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String mail=(String)session.getAttribute("Email");
    String pass=request.getParameter("name");
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps2=con2.prepareStatement("update webtab set password=? where Email=?");
        ps2.setString(1,pass);
        ps2.setString(2,mail);
        ps2.executeUpdate();
        response.sendRedirect("LoginS.jsp");
    }catch(Exception e)
    {
        out.print(e);
    }
    
%>