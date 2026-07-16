<%-- 
    Document   : login
    Created on : 10 May 2026, 21:23:53
    Author     : Xolani Msibi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login</h1>
        
        <form action="j_security_check" method="POST">
            <table>
                    <tr>
                        <td>Username: </td>
                        <td><input type="text" name="j_username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td><input type="password" name="j_password" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="LOGIN" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
