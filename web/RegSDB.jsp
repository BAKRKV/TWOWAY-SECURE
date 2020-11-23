<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="javax.swing.JOptionPane" %>

<%
    

    String a=request.getParameter("FullName");
    String b=request.getParameter("email");
    String c=request.getParameter("Full");
    String d=request.getParameter("Mobile");
    String e=request.getParameter("ab");
    String pin=request.getParameter("PIN");
    
    String ab=(String)session.getAttribute("id");
    
    String fa=(String)session.getAttribute("ch");
    
    int val1 = Integer.parseInt(e);
    int val2=Integer.parseInt(fa);
    int val=val2-val1;
    
    System.out.print(val+"jjjjjjjjjjjjjjjjjjjjjjjjjj");
    

    
    

    

    
    
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps=con.prepareStatement("select Email from webtab where Email=?");
        ps.setString(1,b);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            JOptionPane.showMessageDialog(null,"Already mail exits");
        }
        else
        {
              
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps1=con1.prepareStatement("insert into webtab(ide,Fname,Email,password,Mobile,choose,PIN) values(?,?,?,?,?,?,?)");
        ps1.setString(1,ab);
        ps1.setString(2,a);
        ps1.setString(3,b);
        ps1.setString(4,c);
        ps1.setString(5,d);
        ps1.setString(6,e);
        ps1.setString(7,pin);

        
        int x=ps1.executeUpdate();
        
        response.sendRedirect("LoginS.jsp");  
     
        }
        }catch(Exception ex1)
        {
            out.print(ex1);
        }
        
        String email=(String)session.getAttribute("Em");
        String aa=Integer.toString(val);
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps=con.prepareStatement("update webtab set choose="+aa+" where Email=?");
        ps.setString(1,email);
        ps.executeUpdate();
        }catch(Exception exx)
        {
            out.print(exx);
        }

        
  
    
    
    

%>