<%@page import="java.sql.ResultSet"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="javax.swing.JOptionPane" %>
<%@page import="java.util.Date" %>
<%
    String a=null;
    String b=null;
    String c=null;
    String d=null;
    String e=null;
    String f=null;
    String g=null;
            int Id = 0;
    a=request.getParameter("FullName");
    b=request.getParameter("email");
    c=request.getParameter("Full");
    g=request.getParameter("Fulll");
    d=request.getParameter("Mobile");
    e=request.getParameter("ab");
     f=request.getParameter("PIN");
     
    Id = (int)(((Math.random() * 9000)+100));
    String aa=""+Id;
    

               Date da=new Date();
		System.out.println("Old minute value is: "+da.getMinutes());
		da.setMinutes(da.getMinutes()+12);
		System.out.println("The Minute value after setting is: "+da.getMinutes());
    
    
    
        
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
             
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps1=con1.prepareStatement("insert into webtab(ide,Fname,Email,password,Mobile,choose,PIN,Time) values(?,?,?,?,?,?,?,?)");
        ps1.setString(1,aa);
        ps1.setString(2,a);
        ps1.setString(3,b);
        ps1.setString(4,c);
        ps1.setString(5,d);
        ps1.setString(6,e);
        ps1.setString(7,f);
        ps1.setInt(8,da.getMinutes());

        
        int x=ps1.executeUpdate();
        

        
    }catch(Exception ex)
    {
        out.print(ex);
    }
        }
        }catch(Exception ex1)
        {
            out.print(ex1);
        }
       
    a=request.getParameter("FullName");
    b=request.getParameter("email");
    c=request.getParameter("Full");
    d=request.getParameter("Mobile");
    e=request.getParameter("ab"); 
     f=request.getParameter("PIN");
        
 
      Class.forName("com.mysql.jdbc.Driver");
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps2=con2.prepareStatement("insert into admin(id,Fname,Email,password,Mobile,storage,PIN,Time) values(?,?,?,?,?,?,?,?)");
        ps2.setString(1,aa);
        ps2.setString(2,a);
        ps2.setString(3,b);
        ps2.setString(4,c);
        ps2.setString(5,d);
        ps2.setString(6,e);
        ps2.setString(7,f);
        ps2.setInt(8,da.getMinutes());
        int x=ps2.executeUpdate();
        

          response.sendRedirect("Login.jsp");  
    
    
    

%>