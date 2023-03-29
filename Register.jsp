<%-- 
    Document   : Register
    Created on : May 21, 2022, 7:06:03 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" href="css/register.css">
        <title>Register / PhoenixAirline</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image" href="images/logo.png" />
    </head>

    <body>
        
       <div class="regform">
        <h1>CLIENT REGISTRATION FORM</h1>
       </div> 
        <div class="main">
            <form name="form1" action="Register" onsubmit="return validate()" method="POST">
                
                
                    
                        <div id="name">
                            
                                <h2 class="name"> Name</h2>
                                <input class="firstname" type="text" name="fname" value="" /><br>
                                <label class="lastlabel">First Name</label>


                                <input class="lastname" type="text" name="lname" value="" />
                                <label class="lastlabel">Last Name</label>
                        </div>
                           
                                                
                        
                            <h2 class="name">NIC Number</h2>
                            <input class="nicno" type="text" name="nic" value="" />
                        
                        
                            <h2 class="name">Contact Number</h2>
                            <input class="number"  type="number" name="cnum" value="" />
                        

                            <h2 class="name">Gender</h2>
                            <label class="nicno"style="color:white;">
                            <input type="radio" name="gender" value="Male" />
                            
                            <span class="genderc"></span>Male
                            </label>
                            
                            
                            
                            <label class="nicno" style="color:white;">
                            <input type="radio" name="gender" value="Female" />
                            
                            <span class="genderc"></span>Female
                            </label>
                            
                        
                        
                            <h2 class="name">Country</h2>
                            <select class="option" name="country">
                                    <option>Country</option>
                                    <option>Sri Lanka</option>
                                    <option>India</option>
                                    <option>Pakistan</option>
                                    <option>Bangladesh</option>
                                    <option>China</option>
                                    <option>Japan</option>
                                    <option>Australia</option>
                                    <option>New Zealand</option>
                                    <option>Philippines</option>
                                    <option>Vietnam</option>
                                    <option>Turkey</option>
                                    <option>Thailand</option>
                                    <option>South Korea</option>
                                    <option>Singapore</option>
                                    <option>Oman</option>
                                    <option>Kuwait</option>
                                    <option>Brazil</option>
                                    <option>Germany</option>
                                    <option>Italy</option>
                            </select>
                        
                        
                            <h2 class="name">Username</h2>
                            <input class="nicno" type="text" name="uname" value="" />
                    
                    
                            <h2 class="name">Password</h2>
                            <input class="nicno" type="password" name="password"/>
                    
                    
                            
                           <button type="submit">Register</button> 
                    
            
            
    
            </form>

        </div>
        
        
    <!--Java script-->
    <script src="js/register.js"></script>
        
    </body>
</html>
