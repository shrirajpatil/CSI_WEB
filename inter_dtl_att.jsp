<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%
      try{
    	   String chk=session.getAttribute("display").toString();
    	   out.println(chk); 
    	   if(chk=="1"){  
    
    String ev_id=request.getParameter("ev_id");
   out.println(ev_id);
    String url="jdbc:mysql://localhost:3306/csi_main";
    String username="root";
    String password="fcrit@123"; 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection(url,username,password);
    Statement st=conn.createStatement();
    
    ResultSet rs=st.executeQuery("select ev_name from event_data where ev_id="+ev_id+"");
    
rs.next();
String getname=rs.getString(1);
    session.setAttribute("ev_name", getname);
    response.sendRedirect("test.jsp"); 
    
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


</body>
</html>