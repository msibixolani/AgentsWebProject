<%-- 
    Document   : list_outcome
    Created on : 06 May 2026, 22:50:05
    Author     : Xolani Msibi
--%>

<%@page import="java.text.SimpleDateFormat"%>
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
            String genderStr = (String)request.getAttribute("gender");
            char gender = genderStr.charAt(0);
            List<Agents> list = (List<Agents>)request.getAttribute("list");
        %>
        <%
            int count = 0;
            Long id = 0L;
            String name = "";
            Integer age = 0;
            String status= "";
            SimpleDateFormat form = new SimpleDateFormat("dd MMMM yyyy");
            Date dob = form.parse("01 January 0000");
            for(int i = 0; i < list.size(); i++)
            {
            count++;
                Agents a = list.get(i);
                
                if(a.getGender() == gender)
                {
                    
                id = a.getId();
                name = a.getName();
                age = a.getAge();
                gender = a.getGender();
                status = a.getMaritalStatus();
                dob = a.getDateOfBirth();
                }
                
            %>
            <table>
                <th>List for <%=gender%>: </th>
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
            The are <%=count%>, for <%=gender%>
        </p>
        <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="menu.jsp">Menu</a></li>
        </ol>
        
    </body>
</html>
