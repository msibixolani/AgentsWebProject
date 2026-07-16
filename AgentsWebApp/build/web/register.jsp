<%-- 
    Document   : register
    Created on : 08 May 2026, 19:43:28
    Author     : Xolani Msibi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register</h1>
        
         <p>Enter information.</p>
        
        <form action="AddAgentsServlet.do" method="POST">
            <table>
                    <tr>
                        <td>ID: </td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>age: </td>
                        <td><input type="text" name="age" value="" /></td>
                    </tr>
                    <tr>
                        <td>Gender: </td>
                        <td><select name="gender">
                                <option value='M'>Male</option>
                                <option value='F'>Female</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Date: </td>
                        <td><input type="text" name="date" value="" /></td>
                    </tr>
                    <tr>
                        <td>Status: </td>
                        <td><select name="status">
                                <option value='M'>Married</option>
                                <option value='S'>Single</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="ADD" /></td>
                    </tr>
            </table>

            
            
        <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="menu.jsp">Menu</a></li>
        </ol>
        </form>
    </body>
</html>
