<%-- 
    Document   : Login
    Created on : May 21, 2022, 7:05:41 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>LOGIN / PhoenixAirline</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" type="image" href="images/logo.png" />
  </head>

  <body>


   <div class="name">
    <h1>PHOENIX AIRLINE PVT</h1>
   

    <div class="center">      

      <form name="form1" onsubmit="return validate()" action="Login" method="post">
        <div class="txt_field">
          <input type="text" name="uname" >
          <span></span>
          <label>Username</label>
        </div>

        <div class="txt_field">
          <input type="password" name="password" >
          <span></span>
          <label>Password</label>
        </div>
        <input type="submit" value="Login">
        <div class="signup_link">
        Not a member? <a href="Register.jsp">REGISTER</a>
        <br>
        STAFF? <a href="StaffLogin.jsp">SIGN IN</a>
        <br>
        ADMIN? <a href="AdminLogin.jsp">DASHBOARD</a>
        </div>
      </form>
    </div>
    </div>
        <script src="js/userlogin.js"></script>
  </body>
</html>

