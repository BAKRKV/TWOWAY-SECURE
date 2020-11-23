<%
String  Path=(String)session.getAttribute("dpath");
System.out.println(Path+"fileeeeeeeeeeeeeeeeee");
String  fname=(String)session.getAttribute("fname");
//System.out.println(filename);
//String filename = "home.jsp";   
//String filepath = "e:\\";   
response.setContentType("APPLICATION/OCTET-STREAM");   
response.setHeader("Content-Disposition","attachment; filename=\"" + fname + "\"");   

java.io.FileInputStream fileInputStream=new java.io.FileInputStream(Path);  
          
int i;   
while ((i=fileInputStream.read()) != -1) {  
  out.write(i);   
}   
fileInputStream.close();   


%>
