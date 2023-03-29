<%-- 
    Document   : AddStaff
    Created on : May 21, 2022, 8:02:11 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        
        <%
            String userid=(String)session.getAttribute("name");
            if(userid==null)
            {
                response.sendRedirect("Login.jsp");
                return;
            }
            %>
        <link rel="stylesheet" href="css/staff.css">
        <title>ADDSTAFF / PhoenixAirline</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" type="image" href="images/logo.png" />
    </head>

    <body>
        
       <div class="regform">
        <h1>REGISTER STAFF</h1>
       </div> 
        <div class="main">
           <form name="form1" action="AddStaff" method="POST" onsubmit="return validate()">
                
                         <div id="staffid">

                            
                            <h2 class="name">Sraff ID</h2>
                            <input class="staffid" type="text" name="sid" value="" /><br>

                            </div>
                    
                        <div id="name">
                            
                                <h2 class="name">Staff Name</h2>
                                <input class="staffname" type="text" name="sname" value="" /><br>

                          


                               
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
                            
                        
                        
                        
                            <h2 class="name">Username</h2>
                            <input class="nicno" type="text" name="uname" value="" />
                    
                    
                            <h2 class="name">Password</h2>
                            <input class="nicno" type="password" name="password"/>
                    
                    
                            
                           <button type="submit">ADD</button> 
                    
            
            
    
            </form>

        </div>
        
        
    <!--Java script-->
    <script src="js/staff.js"></script>
        
    </body>
</html>
