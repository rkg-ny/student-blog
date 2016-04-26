<%-- 
    Document   : register
    Created on : Apr 12, 2016, 3:45:54 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="register.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SUNY Poly Blog Login page</title>
    </head>
    <body>
        <center><h1>LOGIN HERE </h1></center>
        <div id="imagecat">
        <img src="sunycat.jpg">
        </div>
        <br>
        <br>
        <form id="form" action="blog.jsp" method="POST">
        <br>
        <br>
        
        <table border="0" id="table">
            <tbody>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="usname" value="" size="30" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pass" value="" size="30" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="login" name="login" /></td>
                </tr>
            </tbody>
        </table>

 </form>    
        <jsp:useBean id="obj" class="mypack.Students"></jsp:useBean>
        <jsp:setProperty property="*" name="obj"></jsp:setProperty> 
         <%@page import ="mypack.Datainsert"%>
        <%
        try
        {
            int i=Datainsert.reg(obj);
        }
        catch(Exception e){
            out.println(e);
        }
        finally
        {
            System.out.println("Record created");
        }
        %>
    </body>    
</html>
