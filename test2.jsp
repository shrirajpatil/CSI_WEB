<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import="java.sql.*"%>

<%String id[]= new String[10];
for(int i=0;i<10;i++){
id[i]=request.getParameter("check"+i);
out.println(id[i]);
}
%>

<form name=myname method=post action="update.jsp">
<table border="1">
<tr>
<td><b><u>bookid</u></b></td>
<td><b><u>Author</u></b></td>

<td><b><u>title</u></b></td>
</tr>
<%try{

	String url="jdbc:mysql://localhost:3306/csi_main";
	String username="root";
	String password="fcrit@123"; 
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(url,username,password);
	Statement st=conn.createStatement();
ResultSet rs ;

for(int a=0;a<10;a++){
rs = st.executeQuery("select * from book where bookid='"+id[a]+"'");
while(rs.next()){ %>
<tr>
<td><input type="text" name="bid" value="<%= rs.getString("bookid") %>"></td>
<td><input type="text" name="auth" value="<%= rs.getString("author") %>"></td>
<td><input type="text" name="tit" value="<%= rs.getString("title") %>"></td>
</tr><%
}
}
}catch(SQLException e){ System.out.println(e.getMessage()); } %>
</table>

<input type="submit">