<%-- 
    Document   : list_outcome
    Created on : 06 May 2026, 22:50:05
    Author     : Xolani Msibi
--%>

<%@page import="java.util.ArrayList"%>
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
            
            Agents list = (Agents)request.getAttribute("list");
            List<Agents> li = new ArrayList<Agents>();
            li.add(list);
        %>
        
        <%
            Long id = 0L;
            String name = "";
            Integer age = 0;
            char gender = 'M';
            String status= "";
            SimpleDateFormat form = new SimpleDateFormat("dd MMMM yyyy");
            Date dob = form.parse("01 January 0000");
            for(int i = 0; i < li.size(); i++)
            {
               list = li.get(i);
                
                    
                id = list.getId();
                name = list.getName();
                age = list.getAge();
                gender = list.getGender();
                status = list.getMaritalStatus();
                dob = list.getDateOfBirth();
                   
            %>
            <%
        }
        %>
        <table>
                <th>List: </th>
                <tr>
            <td><%=id%></td>
            <td><%=name%></td>
            <td><%=age%></td>
            <td><%=gender%></td>
            <td><%=status%></td>
            <td><%=dob%></td>
                </tr>
            </table>
        
        <ol>
            <li><a href="index.html">Home</a></li>
            <li><a href="menu.jsp">Menu</a></li>
        </ol>
        
    </body>
</html>
