<%-- 
    Document   : login
    Created on : Nov 28, 2015, 10:15:43 AM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login With Servlets</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
<!--        <div>TODO write content</div>-->
<form class="form-login" action="login" method="POST" >
    
        <h3 class="form-login-heading">Please Log in to continue</h3>
        <label for="inputEmail" class="sr-only">Username</label>
        <input type="email" name="j_username" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" size="15" name="j_password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
       </form>
        </div>
    </body>
</html>
