<%-- 
    Document   : Register.jsp
    Created on : Apr 12, 2016, 1:45:52 PM
    Author     : rohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="register.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
    </head>
    <body>
        <center><h1>Welcome to SUNY Poly Students Blog </h1></center>
        <div id="image">
        <img src="suny.jpg">
        </div>
        <br>
        <br>
        <div>
        <form id="form" action="register.jsp" method="POST">
            <p><b><u><h1>Registration Form</h1></b></u></p>
            <table border="0" id="table">
                <tbody>
                    <tr>
                        <td><h5>Username</h5></td>
                        <td><input type="text" name="username" /></td>
                     </tr>
                    
                    <tr>
                        <td><h5>Emailid</h5></td>
                        <td><input type="text" name="emailid" /><br></td>
                        
                    </tr>
                    
                    <tr>
                        <td><h5>Password</h5></td>
                        <td><input type="password" name="password" /><br></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><h5><input type="Submit" value="Submit" name="Register" /></h5></td>
                    </tr>
                </tbody>
               
            </table>        
            
        </form>
        </div>
        
    </body>
</html>
