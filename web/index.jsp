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
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    </head>
    <body>
  <div class="container">  
    <form>
        <fieldset class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" name="user_name" placeholder="Username">
        </fieldset>

        <fieldset class="form-group">
            <label for="pwd">Password</label>
            <input type="password" class="form-control" name="pass_word" placeholder="Password">
        </fieldset>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
   </div> 
        <!-- <form name="registration" action="SaveUser" method="POST">
            
    First Name: <input type="text" name="user_name">
    <br>
    
    Password: <input type="password" name="pass_word">
    <br>
    
    <input type="submit" value="Submit">
            
        </form> -->
        <script src="js/bootstrap.js"></script>
    </body>
</html>
