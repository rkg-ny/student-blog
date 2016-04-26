<%-- 
    Document   : login
    Created on : Apr 20, 2016, 8:05:09 PM
    Author     : rohit
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog page</title>
    </head>
    <body>
        <%
        String user = request.getParameter("usname");
        String pass = request.getParameter("pass");
        out.println(user);
        out.println(pass);
        %>
        
        <%
            try
            {
                Connection con;
           PreparedStatement ps;
           ResultSet rs;
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sunyit?zeroDateTimeBehavior=convertToNull","rohit","Password");
        
         ps=con.prepareStatement("select * from sunyit.students where Username=? and password=?;");
         ps.setString(1,user);
         ps.setString(2,pass);
         rs=ps.executeQuery();
         if (rs.next())
         {
          response.sendRedirect("blog1.jsp");
          }
         else
         {
         response.sendRedirect("error.html");
         }
            }catch (SQLException e)
            {
                out.print(e.getMessage());
            }
            
         %>
         
    </body>
</html>
