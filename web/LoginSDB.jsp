<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%
    String a=request.getParameter("kk");
    String b=request.getParameter("kk1");

    session.setAttribute("uname",a);
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps=con.prepareStatement("select Email,password,choose from webtab where Email=? and password=?");
        ps.setString(1,a);
        ps.setString(2,b);
        ResultSet rs=ps.executeQuery();
        
        if(rs.next())
        {
            String userid=rs.getString("Email");
        	session.setAttribute("userid",userid);
                
                response.sendRedirect("Blog1.jsp");
                String gb=rs.getString(3);
                session.setAttribute("gb",gb);

        }
        else
        {
            JOptionPane.showMessageDialog(null,"Password Or Username is Wrong");
            response.sendRedirect("Login.jsp");
             
        }
        
    }catch(Exception ex)
    {
        out.print(ex);
    }

%>