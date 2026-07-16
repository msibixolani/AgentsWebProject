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
        <title>Gender Page</title>
    </head>
    <body>
        <h1>Get By Gender</h1>
        
         <p>Enter information.</p>
        
        <form action="GetByGenderServlet.do" method="POST">
            <table>
                    <tr>
                        <td>Gender: </td>
                        <td><select name="gender">
                                <option value='M'>Male</option>
                                <option value='F'>Female</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="GET" /></td>
                    </tr>
            </table>

        </form>
    </body>
</html>
