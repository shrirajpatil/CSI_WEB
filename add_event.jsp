<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<div>
<%try{
	   String chk=session.getAttribute("display").toString();
	   out.println(chk);
	   if(chk=="1"){ %>
	   
<form action="add_event_process.jsp" method="post">
<div><input type="textbox" name="event_name">Name Of the event</div>
<div><input type="textbox" name="ev_id">event_id</div>
<div><input type="textbox" name="venue">Venue</div>
<div><input type="date" name="date">Date</div>
<input type="submit" value="Submit">
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