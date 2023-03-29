<%-- 
    Document   : AddStaffPart02
    Created on : May 23, 2022, 8:47:39 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    
    <%
            String userid=(String)session.getAttribute("name");
            if(userid==null)
            {
                response.sendRedirect("Login.jsp");
                return;
            }
            %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image" href="images/logo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/staffpart02.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>ADD STAFF / PhoenixAirline</title>
</head>
<body>
    <!-- Sidebar start-->
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
     
    <div class="sidebar-brand"> 
        <h2><span class="lab la-PHEONIX AIRLINES"></span><span>PHOENIX AIRLINES</span> 
        </h2>
    </div>


    <div class="sidebar-menu">
        <ul>
            <li>  
                <a href="" class="Active"><span class="las la-igloo"></span>
                    <span>ADD STAFF</span>
                </a>
            </li>
        </ul>
    </div>
    </div>
    <!-- End Sidebar start-->

    <!-- MAIN CONTENT-->
         <div class="main-content">
             <header>
                 <h2>
                    <label for="nav-toggle">
                        <span class="las la-bars"></span>
                    </label>
                  
                 </h2>
                 <!-- search wrapper was hear-->
                 <div>
                    <h2>ADD STAFF</h2>
                 </div>
                 <div class="user-wrapper">
                     <img src="images/user.webp" height="50px" width="50px" alt="">
                         <div>
                         </div>
                 </div>
             </header>
        
    <!-- Card Section-->
    <main>
    <!--End Card Section-->  


    <!--flight Section-->  

<!--FLIGHTS HERE-->


<!--TICKETS IS HERE-->

<div class="recent-grid">
    <div class="tickets">
    <div class="card">
        <div class="card-header"> 
             <h3>ADD STAFF</h3>
                
        </div>
        <div class="card-body">
            <div class="regform">
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
                            <label class="nicno"style="color:black;">
                            <input type="radio" name="gender" value="Male" />
                            
                            <span class="genderc"></span>Male
                            </label>

                            
                            
                            <label class="nicno" style="color:black;">
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
    </div>
    </div>

<!--END TICKETS IS HRE-->
<script src="js/staff.js"></script>
</body>
</html>
