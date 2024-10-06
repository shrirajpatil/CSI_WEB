<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
   <%
   try{
   String chk=session.getAttribute("display").toString();
   out.println(chk);
   if(chk=="1"){
   Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
Statement st=conn.createStatement();
String sql="select *from stu_login";

ResultSet rs= st.executeQuery(sql);

/* int id = rs.getInt("ID"); */

response.setHeader("Cache-Control","no-cache,no-store");


while (rs.next()) {
	String id = rs.getString(2);
	String name = rs.getString(3);
/*    out.println(id); */
     out.println(id);
     out.println(name);

  
}

   }
   else{
	   out.println("your ar invalid");
   }
   }
   catch(Exception e){
	   out.println("enter oyu r worng");
   }

   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<button ><a href="logio.jsp">Back to login
</a></button>

</body>
<script type="text/javascript"></script>
</html>