<%-- 
    Document   : StaffLogin
    Created on : May 22, 2022, 2:06:17 PM
    Author     : Ravindu
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>STAFF LOGIN / PhoenixAirline</title>
    <link rel="stylesheet" href="css/stafflogin.css">
    <link rel="shortcut icon" type="image" href="images/logo.png" />
  </head>

  <body>


   <div class="name">
    <h1>PHOENIX AIRLINE PVT</h1>
   

    <div class="center">      

      <form name="form1" onsubmit="return validate()" action="StaffLogin" method="post">
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
        Not a STAFF member? <a href="AddStaff.jsp">REGISTER</a>
        <br>
        </div>
      </form>
    </div>
    </div>
        <script src="js/stafflogin.js"></script>
  </body>
</html>
