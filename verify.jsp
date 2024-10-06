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
<form action="verify_pr.jsp" method="post">
<%

String url="jdbc:mysql://localhost:3306/csi_main";
String username="root";
String password="fcrit@123"; 
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url,username,password);
Statement st=conn.createStatement();

ResultSet rs = st.executeQuery("select verfied,ID from stu_info where verfied='N'");
String id[]=new String[100];
while(rs.next()){
	int i=0;

	id[i]=rs.getString(2);
	%>
     
	<tr>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(1)%> </td>
	<td><input type="text" name="winn"></td>

	</tr>

<% 	i++;}


%>
</table>


<input type="submit" value="Submit"/>
</form>




</body>
</html>