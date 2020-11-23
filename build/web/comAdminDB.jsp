<%@page import="javax.swing.JOptionPane"%>
<%
    String a=request.getParameter("kk");
    String b=request.getParameter("kk1");
     if (a.equals("admin") && b.equals("admin"))
     {
            response.sendRedirect("Blog3.jsp");
     } else {
         JOptionPane.showMessageDialog(null,"Wrong password or Username");
            response.sendRedirect("ComAdmin.jsp");
        }
    
%>