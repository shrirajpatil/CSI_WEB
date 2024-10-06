<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<style>
    body {
        background-color: #080710;
    }

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

    body {
        background-color: #080710;
    }


    .background {
        width: 430px;
        height: 520px;
        position: absolute;
        transform: translate(-50%, -50%);
        left: 50%;
        top: 50%;
    }

    .background .shape {
        height: 200px;
        width: 200px;
        position: absolute;
        border-radius: 50%;
        margin-top: 126px;
    }

    .shape:first-child {
        background: linear-gradient(#1845ad,
                #23a2f6);
        left: -80px;
        top: -80px;
    }

    .shape:last-child {
        background: linear-gradient(to right,
                #2f78ff,
                #19d0f0);
        right: -90px;
        bottom: -130px;
    }

    form {
        height: 430px;
        margin-top: 99px;
        width: 400px;
        background-color: rgba(255, 255, 255, 0.13);
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        border-radius: 10px;
        backdrop-filter: blur(10px);
        border: 2px solid rgba(255, 255, 255, 0.1);
        box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
        padding: 50px 35px;
    }

    form * {
        font-family: 'Poppins', sans-serif;
        color: #ffffff;
        letter-spacing: 0.5px;
        outline: none;
        border: none;
    }

    form h3 {
        font-size: 32px;
        font-weight: 500;
        line-height: 42px;
        text-align: center;
    }

    label {
        display: block;
        margin-top: 30px;
        font-size: 16px;
        font-weight: 500;
    }

    input {
        display: block;
        height: 50px;
        width: 100%;
        background-color: rgba(255, 255, 255, 0.07);
        border-radius: 3px;
        padding: 0 10px;
        margin-top: 8px;
        font-size: 14px;
        font-weight: 300;
    }

    ::placeholder {
        color: #e5e5e5;
    }

    button {
        margin-top: 50px;
        width: 100%;
        background-color: #ffffff;
        color: #080710;
        padding: 15px 0;
        font-size: 18px;
        font-weight: 600;
        border-radius: 5px;
        cursor: pointer;
    }
    #register_btn{
    margin-top:9px;
    }

</style>

<body>

    <%

/*     String username=request.getParameter("uname");
    String password=request.getParameter("pass");
     Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
    Statement st=conn.createStatement();
    ResultSet rs;
    int x=st.executeUpdate("insert into stu_login values('"+username+"','"+password+"')");  */
    /*for checkeing the valid user)*/
String username=request.getParameter("uname");
    String password=request.getParameter("pass");
     Class.forName("com.mysql.jdbc.Driver");
     Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/csi_main","root","fcrit@123");
    Statement st=conn.createStatement();
    String sql="select *from stu_login where ID='"+username+"' and password='"+password+"'";
    ResultSet rs = st.executeQuery(sql);
 
    session.setAttribute("display","0");
    
    %>

    <nav  id="navbar" class="navbar">

        <img src="2.png" alt="Girl in a jacket">

        <div class="button-main">
            <div class="menu-items" id="menu-items">
               <a href="NewFile.jsp" class="button">Home</a>
               
                
                <a href="about.jsp" class="button">Committee </a>
                <a href="archives2.jsp" class="button">Archives</a>
                <a href="logio.jsp" class="button">Login</a>
                <a href="team.jsp" class="button">About US </a>
                <a href="contact.jsp" class="button">Contact US</a>
            </div>
            <label class="menu-bar" id="menu-bar" for="toggle">&#9776</label>

        </div>

    </nav>


    <div class="login_body">
        <div class="background">
            <div class="shape"></div>
            <div class="shape"></div>
        </div>
        <form action="login_auth.jsp">
            <h3>Login Here</h3>

            <label for="username">Username</label>
            <input type="text" name="uname" placeholder="Email or Phone" id="username">

            <label for="password">Password</label>
            <input type="password" name="pass" placeholder="Password" id="password">
          
           <% 
           
           
           
           
           %>
            <button id="stu_login">Log In</button>
          
              <button id="register_btn" href="register_auth.jsp">Register</button>22

        </form>
    </div>

</body>

</html>