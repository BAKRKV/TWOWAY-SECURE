<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Date"%>
<%
    String a=request.getParameter("kk");
    String b=request.getParameter("kk1");

    session.setAttribute("uname",a);
    System.out.println("welcome..............");
    int val=0;
     Class.forName("com.mysql.jdbc.Driver");
        Connection cond=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement psd=cond.prepareStatement("select * from webtab where Email=?");
           psd.setString(1,a);
           ResultSet rsd=psd.executeQuery();
           while(rsd.next())
           {
              val=rsd.getInt("Time");
                Date da=new Date();
		System.out.println("Old minute value is: "+da.getMinutes());
		if(da.getMinutes()>=val)
                {
                    Connection conk=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
                    PreparedStatement psk=conk.prepareStatement("Update webtab set password='xxx' where Email=?");
                    psk.setString(1,a);
                    psk.executeUpdate();
                    out.print("Session experied");
                }
                
                else
                {
                    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/webcloud","root","root");
        PreparedStatement ps=con.prepareStatement("select * from webtab where Email=? and password=?");
        ps.setString(1,a);
        ps.setString(2,b);
        ResultSet rs=ps.executeQuery();
        
        if(rs.next())
        {

            
            
            String aa=rs.getString(1);
            System.out.println(aa+"000000");
            session.setAttribute("id",aa);
            
            String bb=rs.getString(6);
            session.setAttribute("ch",bb);
            
            String cc=rs.getString(3);
            session.setAttribute("Em",cc);
            response.sendRedirect("Blog.jsp");

        }
        else
        {
            response.sendRedirect("Login.jsp");
             
        }
        
    }catch(Exception ex)

    {
        out.print(ex);
System.out.println(ex);
    }


                    
                }
           }
                    
                    

    
    
%>