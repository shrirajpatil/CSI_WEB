<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String url="jdbc:mysql://localhost:3306/csi_main";
String username="root";
String password="fcrit@123"; 
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url,username,password);
Statement st=conn.createStatement();
String id[]=new String[100];

String winn[] =request.getParameterValues("winn");
for(int i=0;i<winn.length;i++) {
	id[i]=request.getParameterValues("id");
}

if(winn!=null) {
for(int i=0;i<winn.length;i++) {
out.println(winn[i]);
}
}

/* for(int a=0;a<winn.length;a++){
	String win=winn[a]; */
	out.println(id[2]);
	/* st.executeUpdate("update stu_info set verfied='"+win+"' where ID="+z+""); */




%>

</body>
</html>