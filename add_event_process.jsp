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
   Statement smt=conn.createStatement();
 
  String ev_id=request.getParameter("ev_id");
  String ev_name=request.getParameter("event_name");
  String date=request.getParameter("date");
  String venue=request.getParameter("venue");
  

       

 String sql="insert into event_data values('"+ev_id+"','"+ev_name+"','"+venue+"','"+date+"')";
int q =st.executeUpdate(sql); 
//tou update event data table 

  //to creat e adtudent_table
  st.executeUpdate("create table "+ev_name+" (serial int auto_increment,ev_id varchar(90) default '"+ev_id+"',stu_id varchar(90),name varchar(90),Email varchar(90),mob varchar(90),att enum('P','A'),win enum('1','0'),foreign key(ev_id) references event_data(ev_id),unique key(serial))");
  
  
    }
	   else{
		   out.println("your ar invalid");
	   }
	   }
	   catch(Exception e){
		   out.println("enter oyu r worng");
	   }	   
  
    response.setHeader("Cache-Control","no-cache,no-store");


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