
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp</title>
    </head>
    <body>
        <script type="text/javascript" >
            function func1()
            {
                if(document.getElementById("fname").value==""){
                     document.getElementById("fname").style.borderColor = "red";
                }
                if(document.getElementById("fname").value!=""){
                     document.getElementById("fname").style.borderColor = "#cacaca";
                }
            }
            function func2()
            {
                if(document.getElementById("lname").value==""){
                    document.getElementById("lname").style.borderColor = "red";
                }
                if(document.getElementById("lname").value!=""){
                    document.getElementById("lname").style.borderColor = "#cacaca";
                }
            }
            function func3()
            {
                if(document.getElementById("uname").value==""){
                    document.getElementById("uname").style.borderColor = "red";
                }
                if(document.getElementById("uname").value!=""){
                    document.getElementById("uname").style.borderColor = "#cacaca";
                }
            }
            function func4()
            {
                if(document.getElementById("npassword").value==""){
                    document.getElementById("npassword").style.borderColor = "red";
                }
                if(document.getElementById("npassword").value!=""){
                    document.getElementById("npassword").style.borderColor = "#cacaca";
                }
            }
            function func5()
            {
                if(document.getElementById("repassword").value==""){
                    document.getElementById("repassword").style.borderColor = "red";
                }
                if(document.getElementById("repassword").value!=""){
                    document.getElementById("repassword").style.borderColor = "#cacaca";
                }
                if(document.getElementById("repassword").value!=document.getElementById("npassword").value){
                    document.getElementById("repassword").style.backgroundColor = "#c56666";
                    document.getElementById("npassword").style.backgroundColor = "#c56666";
                    document.getElementById("errorpassword").innerHTML="password does not match";
                    document.getElementById("errorpassword").style.color="red";
                }
                if(document.getElementById("repassword").value==document.getElementById("npassword").value){
                    if(document.getElementById("repassword").value!=""||document.getElementById("npassword").value!=""){
                        document.getElementById("repassword").style.backgroundColor = "#92cc75";
                        document.getElementById("npassword").style.backgroundColor = "#92cc75";
                    }
                }
            }
            function func6()
            {
                if(document.getElementById("city").value==""){
                    document.getElementById("city").style.borderColor = "red";
                }
                if(document.getElementById("city").value!=""){
                    document.getElementById("city").style.borderColor = "#cacaca";
                }
            }
            function func7()
            {if(document.getElementById("state").value==""){
                    document.getElementById("state").style.borderColor = "red";
                }
                if(document.getElementById("state").value!=""){
                    document.getElementById("state").style.borderColor = "#cacaca";
                }
            }
            function func8()
            {
                if(document.getElementById("email").value==""){
                    document.getElementById("email").style.borderColor = "red";
                }
                if(document.getElementById("email").value!=""){
                    document.getElementById("email").style.borderColor = "#cacaca";
                }
            }
        </script>
        <h1>SignUp</h1>
        <form action="IsertDataIntoDatabase" method="POST" name="AdminSignin" >
            <table>
                <tr>
                    <td><input type="text" id="fname" name="fname" onblur="func1();" placeholder="First name"><br></td>
                </tr>
                <tr>
                    <td><input type="text" id="lname" name="lname" onblur="func2();" placeholder="Last name"><br></td>
                </tr>
                <tr>
                    <td>
                        <select>
                            <option value="" disabled="disabled" selected="selected">select sex</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="text" id="uname" name="uname" onblur="func3();" placeholder="User name"><br></td>
                </tr>
                <tr>
                    <td><input type="password" id="npassword" name="password" onblur="func4();" placeholder="Enter password"><br></td>
                </tr>
                <tr>
                    <td><input type="password" id="repassword" name="repassword" onblur="func5();" placeholder="Re-enter password"><br></td>
                    <td><label id="errorpassword"></label></td>
                </tr>
                <tr>
                    <td><input type="text" id="city" name="city" onblur="func6();" placeholder="City"><br></td>
                </tr>
                <tr>
                    <td><input type="text" id="state" name="state" onblur="func7();" placeholder="State"><br></td>
                </tr>
                <tr>
                    <td><input type="text" id="email" name="email" onblur="func8();" placeholder="Email"><br></td>
                </tr>
                <tr>
                    <td><input type="submit" name="Submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
