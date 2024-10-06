<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String username =request.getParameter("uname");
String password=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
Statement st=conn.createStatement();
String sql="select ID from stu_login where ID='"+username+"' and password='"+password+"'";
ResultSet rs = st.executeQuery(sql);


session.setAttribute("username", username);
session.setAttribute("password",password);
     

if(rs.next()){
	if(rs.getString(1).equals("admin")) 
		response.sendRedirect("detail.jsp");
	
	else
		out.println("welcome student");
    
}
else{
	   out.println("invalid user");

} 



%>
