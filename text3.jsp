<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%try{
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
String attend[] =request.getParameterValues("attend");

if(attend!=null) {
for(int i=0;i<attend.length;i++) {
out.println(attend[i]);
}
}

for(int a=0;a<attend.length;a++){
	String att=attend[a];
	int z=a+1;
	st.executeUpdate("update "+ev_name+" set att='"+att+"' where serial="+z+"");
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

</body>
</html>