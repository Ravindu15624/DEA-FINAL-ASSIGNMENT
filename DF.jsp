<%-- 
    Document   : DF
    Created on : May 23, 2022, 5:42:42 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
        <%
        String id=request.getParameter("id");
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/phoenixdb", "root", "");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM flight WHERE id="+id);
        out.println("Data Deleted Successfully!");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
        %>
