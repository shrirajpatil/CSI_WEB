


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<table>
<form action="text3.jsp" method="post">
<% 
try{
	   String chk=session.getAttribute("display").toString();
	   out.println(chk);
	   if(chk=="1"){
		   
 String url="jdbc:mysql://localhost:3306/csi_main";
String username="root";
String password="fcrit@123"; 
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(url,username,password);
Statement st=conn.createStatement();
String ev_name=session.getAttribute("ev_name").toString();
ResultSet rs = st.executeQuery("select stu_id,att from "+ev_name+"");
while(rs.next()){
	int i=0;
	%>

	<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%> </td>
	<td><input type="text" name="attend"></td>

	</tr>

<% 	i++;}


%>
</table>


 <input type="submit" value="Submit"/>
 </form>
 <% 
 
  }
    	   else{
    		   out.println("your ar invalid");
    	   }
    	   }
    	   catch(Exception e){
    		   out.println("enter oyu r worng");
    	   }
    	   %>
</body>
</html> 




<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP List Users Records</title>
</head>
<body>
  <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/csi_main"
        user="root" password="fcrit@123"
    />
     
    <sql:query var="listUsers"  dataSource="${myDS}">
      select ev_id,id from event_attendance;
    </sql:query> 
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Profession</th>
            </tr>
          <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.ev_id}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.profession}" /></td>
                </tr>
            </c:forEach> 
        </table>
    </div>
</body>
</html> --%>