<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String a=request.getParameter("name");
    String b=request.getParameter("PIN");
    try
    {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps2=con2.prepareStatement("select Email,PIN from webtab where Email=? and Pin=?");
        ps2.setString(1,a);
        ps2.setString(2,b);
        ResultSet rs=ps2.executeQuery();
        
        if(rs.next())
        {
            String email=rs.getString("Email");
            session.setAttribute("Email",email);
            response.sendRedirect("setpass1.jsp");
        }
        else
        {
            JOptionPane.showMessageDialog(null,"WRONG PIN OR EMAIL");
            response.sendRedirect("forgot1.jsp");
        }
       
    }catch(Exception e)
    {
        out.print(e);
    }

%>