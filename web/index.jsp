<%-- 
    Document   : index
    Created on : Dec 4, 2015, 6:49:46 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="registration" action="SaveUser" method="POST">
            
    First Name: <input type="text" value="" name="user_name">
    <br>
    
    Password: <input type="password" value="" name="pass_word">
    <br>
    
    <input type="submit" value="Submit">
            
        </form>
    </body>
</html>
