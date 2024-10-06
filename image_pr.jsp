<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%> 
  
     
    <%
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
    Statement st=conn.createStatement();
    response.setContentType("text/html;charset=UTF-8");
 int result=0;
 Part part =request.getPart("image");
 PreparedStatement ps=conn.prepareStatement("insert into data(image) values(?)");
 String imageFileName=file.getSubmittedFileNAme();

    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>