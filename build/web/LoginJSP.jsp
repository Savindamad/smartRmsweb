<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Web Page</title>
    </head>
    <body>
        <script type="text/javascript">
            function ValidateUsename()
            {
                if(document.getElementById("username").value=="")
                {
                    document.getElementById("username").style.borderColor = "red";
                }
                else
                {
                    document.getElementById("username").style.borderColor = "#cacaca";
                }
            }
            function ValidatePassword()
            {
                if(document.getElementById("password").value=="")
                {
                    document.getElementById("password").style.borderColor = "red";
                }
                else
                {
                    document.getElementById("password").style.borderColor = "#cacaca";
                }
            }
        </script>
        
        <h1>Login</h1>
        
        <form action="ValidateLogin" method="POST" name="AdminLogin">
            <table>
            <tr>
                <td><input type="text" id="username" name="username" onblur="ValidateUsename();" placeholder="User name"><br></td>
            </tr>
            
            <tr>
                <td><input type="password" id="password" name="password" onblur="ValidatePassword();" placeholder="Password"><br></td>
            </tr>
            
            <tr>
                <td><input type="submit" value="LogIn"></td>
            </tr>
            </table>
        </form>
    </body>
</html>
