<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%
  try{            
    String username=session.getAttribute("username").toString();
    String password= session.getAttribute("password").toString();
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
   Statement st=conn.createStatement();
   String sql="select type from stu_login where ID='"+username+"' and password='"+password+"'";
   ResultSet rs = st.executeQuery(sql);
   

if(rs.next()){
	if(rs.getString(1).equals("admin")) 
		session.setAttribute("display","1");
	
	
	else
		out.println("sorry you r invalid");
    
}
  }
    catch (Exception e) {
        out.println("Something went wrong.");
  
    }
    %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="web.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Play" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>csi</title>
</head>
<style>
  

    .navbar {

        background-color: black;
        /* :#d5f1f8 */
        border-radius: 0px;
        display: flex;
        justify-content: space-around;
        align-items: center;
        font-size: 20px;
    }

    .navbar img {
        width: 91px;
        height: 79px;
        margin-right: auto;
    }

    .button {
        display: inline;
        padding: 14px 22px;
        margin: 12px;

        text-decoration: none;



    }

    .button:hover {
        color: white;
        background-color: #0065ff;
        border: 2px solid #0065fff8;
        border-radius: 24px;

    }


    .menu-bar {
        display: none;
    }

    @media all and (max-width:737px) {
        .menu-bar {
            display: block;
            position: absolute;
            right: 13px;
            color: yellow;
            top: 34px;
            text-decoration: none;

        }

        .navbar {
            flex-direction: column;
            border-radius: 0px;
        }

        .button-main {


            width: 100%;
            text-align: center;
            padding-top: 12px;
            margin-top: 39px;
            border-radius: 0px;

        }

        .menu-items {
            display: none;
        }

        .active {
            display: block;

        }

        .navbar img {
            width: 91px;
            height: 79px;
            margin: auto;
        }

        .button {
            display: block;
            padding: 9px 16px;
            margin: 14px;
            border-top: 1px solid white;
            text-decoration: none;
        }
    }

    footer {
        display: block;
        background-color: black;
        text-align: center;
        height: 24px;
    }

    footer div {
        font-size: 15px;
        color: white;
    }
    .into{
        text-align: center;
        color:white;
    }
    .empt{
        border:1px solid white;
        margin-top:20px;
        margin-bottom: 20px;
        width: 460px;
    }
    .btn_v button{
        margin-left:57px;
        border-radius: 7px;
        
    }
    .btn_a button{
        margin-left:175px;
        border-radius: 7px;
        
    }
    .dtl_upt input,.dtl_upt button {
        border-radius: 7px;
        margin-left: 20px;
    }
    .dtl_att input,.dtl_att button {
        border-radius: 7px;
        margin-left: 20px;
    }
    .dtl_win input,.dtl_wiin button {
        border-radius: 7px;
        margin-left: 20px;
    }
    .container{
       
        color: antiquewhite;
    }
    body{
     background-image:url(admin.jpeg);
     
    }
</style>

<body>
    <div></div>
    <nav id="navbar" class="navbar">

        <img src="2.png" alt="Girl in a jacket">

        <div class="button-main">
            <div class="menu-items" id="menu-items">
                <a href="NewFile.jsp" class="button">Home</a>
                <a href="about.jsp" class="button">About</a>
                <a href="archives2.jsp" class="button">Archives</a>
                <a href="logio.jsp" class="button">Logout</a>
                <a href="contact.jsp" class="button">Contact US</a>
            </div>
            <label class="menu-bar" id="menu-bar" for="toggle">&#9776</label>

        </div>

    </nav>
    <div class="into"><h2>HELLO ADMIN</h2></div>
    <div class="container">
  <div class="btn_v">
    <span>View Info about the participant</span>
<button>
  <a  href="admin_view.jsp">Click Here
</a>

</button>
</div>
<div class="empt"></div>
<div  class="btn_a"><span>Event Info</span>
<button ><a href="add_event.jsp">Click Here
</a></button>
</div>
<div class="empt"></div>
<div  class="btn_a"><span>To add a event </span>
<button ><a href="add_event.jsp">Click Here
</a></button>
</div>
<div class="empt"></div>

<form class="dtl_upt" method="post" action="inter_dtl_att.jsp">
<p>To Update the Event Info </p>
<label>Enter the Event id <input type="textbox" class="dtl_att_ev_id" name="ev_id">

</label>
<button>Enter</a></button>
</form>

<div class="empt"></div>

<div class="quck_link">
    <h3>Quick Links</h3>
<form class="dtl_att" method="post" action="inter_dtl_att.jsp">
    <p>To Update The attendance of the event </p>
    <label>Enter the Event id <input type="textbox" class="dtl_att_ev_id" name="ev_id">
    
    </label>
    <button>Enter</a></button>
    </form>
<hr>
<form class="dtl_win" method="post" action="inter_dtl_win.jsp">
<p>To marks the winner of the Events</p>
<label>Enter the Event ID:<input type="textbox" class="dtl_att_ev_id" name="ev_id">

</label>
<button>Enter</a></button>
</form>

</div>
</div>
</body>

</html>