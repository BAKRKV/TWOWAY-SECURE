<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String a=request.getParameter("A");
    String b=request.getParameter("B");
    String c=request.getParameter("C");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cond=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps=cond.prepareStatement("select * from webtab where Email=? and PIN=?");
        ps.setString(1,a);
        ps.setString(2,b);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps1=con.prepareStatement("update webtab set password='"+c+"' where Email=?");
        ps1.setString(1,a);
        ps1.executeUpdate();
        
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps2=con1.prepareStatement("update admin set password='"+c+"' where Email=?");
        ps2.setString(1,a);
        ps2.executeUpdate();
        
        response.sendRedirect("Renew.jsp");
        
        
        }
        else
        {
            JOptionPane.showMessageDialog(null,"wrong type");
        }
    }catch(Exception e)
    {
        out.print(e);
    }
%>