<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
String ev_id=request.getParameter("ev_id");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
Statement st=conn.createStatement();
Statement smt=conn.createStatement();

ResultSet rs=st.executeQuery("select ev_name from event_data where ev_id="+ev_id+"");

rs.next();
String getname=rs.getString(1);




%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>