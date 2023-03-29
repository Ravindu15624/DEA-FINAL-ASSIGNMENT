<%-- 
    Document   : UserProfile
    Created on : May 22, 2022, 7:20:16 PM
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
    <link rel="stylesheet" href="css/ticket.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>BOOK TICKET / PhoenixAirline</title>
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
                    <span>BOOK TICKET</span>
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
                    <h2>BOOK A TICKET</h2>
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
             <h3>TICKETS</h3>
                
        </div>
        <div class="card-body">
            <div class="regform">
<h1>BOOK A TICKET</h1>
</div>
<div class="main">

            <form name="form1" action="AddTicket" onsubmit="return validate()" method="POST">



            <h2 class="name">Ticket ID</h2>
            <input class="nicno" type="text" name="tid" value="" />



            <h2 class="name">Date</h2>
            <div class="option"> <input type="date" name="date" value="date1"></div>




            <h2 class="name">Time</h2>

            <div class="option"><input type="time" name="time" value="time1"></div>



            <h2 class="name">Arrival</h2>
            <select class="option" name="arrival">
                <option>Arrival</option>
            <option>Katunayaka</option>
            <option>Bandaranayaka</option>
            <option>Mattala</option>
            <option>Batticaloa</option>
            <option>Colombo</option>
            <option>Jaffna</option>
            <option>Polgolla</option>
            <option>Ampara</option>
            </select>



            <h2 class="name">Departure</h2>
            <select class="option" name="departure">
                <option>Departure</option>
            <option>Colombo</option>
            <option>India</option>
            <option>Pakistan</option>
            <option>Australia</option>
            <option>New Zealand</option>
            <option>Japan</option>
            <option>China</option>
            <option>Bangladesh</option>
            <option>Korea</option>
            </select>


            <h2 class="name">Flight ID</h2>
            <input class="nicno" type="text" name="fid" value="" />


            <h2 class="name">Passengers</h2>
            <select class="option" name="passengers">
            <option>passengers</option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            <option>6</option>
            <option>7</option>
            <option>8</option>
            <option>9</option>
            <option>10</option>
            </select>
            <button type="submit"><h3>Book</h3></button>

            </form>
        </div>
    </div>
    </div>

<!--END TICKETS IS HRE-->
<script src="js/ticket.js"></script>
</body>
</html>
