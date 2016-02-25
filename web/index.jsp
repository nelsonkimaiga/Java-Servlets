<%-- 
    Document   : index
    Created on : Dec 4, 2015, 6:49:46 PM
    Author     : kimaiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Foundation | Welcome</title>
        <link rel="stylesheet" href="css/foundation.css" />
        <link rel="stylesheet" href="css/app.css" />
    </head>
    <body>
        <div class="container">
            <form name="registration" action="SaveUser" method="POST">
                <fieldset class="">
                    <label for="username">Username</label>
                    <input type="text" class="" name="user_name" placeholder="Username">
                </fieldset>
                <fieldset class="form-group">
                    <label for="pwd">Password</label>
                    <input type="password" class="" name="pass_word" placeholder="Password">
                </fieldset>
                <button type="submit" class="">Submit</button>
            </form>
        </div>
        <script src=""></script>
        <!-- Form clearance -->
        <script type="text/javascript">
$.fn.clearForm = function() {
  return this.each(function() {
    var type = this.type, tag = this.tagName.toLowerCase();
    if (tag == 'form')
      return $(':input',this).clearForm();
    if (type == 'text' || type == 'password' || tag == 'textarea')
      this.value = '';
    else if (type == 'checkbox' || type == 'radio')
      this.checked = false;
    else if (tag == 'select')
      this.selectedIndex = -1;
  });
};
        </script>
        <script src="js/vendor/jquery.min.js"></script>
        <script src="js/vendor/what-input.min.js"></script>
        <script src="js/foundation.min.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
