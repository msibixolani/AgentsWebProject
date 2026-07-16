<%-- 
    Document   : list_outcome
    Created on : 06 May 2026, 22:50:05
    Author     : Xolani Msibi
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Agents"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Page</title>
    </head>
    <body>
        <h1>List</h1>
        
        <%
            List<Agents> list = (List<Agents>)request.getAttribute("list");
        %>
        <%
            int count = 0; 
            for(int i = 0; i < list.size(); i++)
            {
            count++;
                Agents a = list.get(i);
                Long id = a.getId();
                String name = a.getName();
                Integer age = a.getAge();
                char gender = a.getGender();
                String status = a.getMaritalStatus();
                Date dob = a.getDateOfBirth();
                
            %>
            <table>
                <th>ID: </th>
                <th>Name: </th>
                <th>Age: </th>
                <th>Gender: </th>
                <th>Status: </th>
                <th>Date: </th>
                <tr>
            <td><%=id%></td>
            <td><%=name%></td>
            <td><%=age%></td>
            <td><%=gender%></td>
            <td><%=status%></td>
            <td><%=dob%></td>
                </tr>
            </table>
            <%
        }
        %>
        
        <p>
            There are <%=count%> agents
        </p>
        <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="menu.jsp">Menu</a></li>
        </ol>
        
    </body>
</html>
