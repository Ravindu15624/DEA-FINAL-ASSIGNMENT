<%-- 
    Document   : AddFlight
    Created on : May 21, 2022, 7:55:11 PM
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
    <link rel="stylesheet" href="css/flight.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>ADD FLIGHT / PhoenixAirline</title>
</head>
<body>
    <!-- Sidebar start-->
    <input type="checkbox" id="nav-toggle">
    <div class="sidebar">
     
    <div class="sidebar-brand"> 
        <h2><span class="lab la-PHEONIX AIRLINES"></span><span>PHOENIX AIRLINE</span> 
        </h2>
    </div>


    <div class="sidebar-menu">
        <ul>
            <li>  
                <a href="" class="Active"><span class="las la-igloo"></span>
                    <span>ADD FLIGHT</span>
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
                    <h2>ADD FLIGHT</h2>
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
             <h3>ADD FLIGHT</h3>
                
        </div>
        <div class="card-body">
            <div class="regform">
</div>
<div class="main">

            <form  name="form1" action="AddFlight" onsubmit="return validate()" method="POST">

			<h2 class="name">Flight Id<h2>
			<input  class="nicno" type="text" name="fid" value="" />

			<h2 class="name">Flight Name</h2>
			<input class="nicno" type="text" name="fname" value="" />

			<h2 class="name">Country</h2>
			<select class="option" name="country" value="">
				<option>Country</option>
				<option>Sri Lanka</option>
				<option>India</option>
				<option>Pakistan</option>
				<option>Japan</option>
				<option>Bangladesh</option>
				<option>Australia</option>
				<option>New Zealand</option>
				<option>USA</option>
				<option>England</option>
				<option>China</option>
				<option>Korea</option>
			</select>

			<h2 class="name">Seats</h2>
			<select class="option" name="seat" value="">
				<option>Seats</option>
				<option>100</option>
				<option>150</option>
				<option>200</option>
				<option>250</option>
				<option>300</option>
			</select>


			<h2 class="name">Packages</h2>
			<select class="option" name="package" value="">
				<option>packages</option>
				<option>Economy</option>
				<option>Business</option>
				<option>Luxury</option>
			</select>

			<button type="submit">ADD</button> 
	
</form>
        </div>
    </div>
    </div>

<!--END TICKETS IS HRE-->
<script src="js/flight.js"></script>
</body>
</html>
