<%-- 
    Document   : DeleteFlight
    Created on : May 23, 2022, 4:09:57 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
        <%
        String driver = "com.mysql.jdbc.Driver";
        String connectionUrl = "jdbc:mysql://localhost:3306/";
        String database = "phoenixdb";
        String userid = "root";
        String password = "";
        try {
        Class.forName(driver);
        } catch (ClassNotFoundException e) {
        e.printStackTrace();
        }
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%
            String user=(String)session.getAttribute("name");
            if(user==null)
            {
                response.sendRedirect("Login.jsp");
                return;
            }
            %>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" type="image" href="images/logo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/user.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <title>CHECK FLIGHT / PhoenixAirline</title>
    
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
                    <span>CHECK FLIGHT</span>
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
                    <h2>CHECK FLIGHT</h2>
                 </div>
                 <div class="user-wrapper">
                     <img src="images/user.webp" height="50px" width="50px" alt="">
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
             <h3>FLIGHTS</h3>
        </div>
        <div class="card-body">
             
            <table width="100%">
            <tr>
            <td>Flight ID</td>
            <td>Flight Name</td>
            <td>Country</td>
            <td>Seats</td>
            <td>Package</td>

            </tr>
            <%
            try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="select * from flight";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
            %>
            <tr>
            <td><%=resultSet.getString("flightid") %></td>
            <td><%=resultSet.getString("flightname") %></td>
            <td><%=resultSet.getString("country") %></td>
            <td><%=resultSet.getString("seats") %></td>
            <td><%=resultSet.getString("package") %></td>
            </tr>
            <%
            i++;
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
            </table>
                
        </div>
    </div>

<!--END TICKETS IS HRE-->

</body>
</html>
