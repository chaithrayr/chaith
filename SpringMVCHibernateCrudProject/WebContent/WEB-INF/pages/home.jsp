<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management Screen</title>
</head>
<body>

 <div align="center">
        <h1>Employee List</h1>
        <h3>
            <a href="newEmployee">New Employee</a>
        </h3>
        <table border="1">
 <tr>
            <th>Name</th>
            <th>Email</th>
            <th>DOB</th>
            <th>gender</th>
            <th>account</th>
            <th>Action</th>
 </tr>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
 
                    <td>${employee.name}</td>
                    <td>${employee.email}</td>
                    <td>${employee.DOB}
                    
                    <script>
                        $( function() {
                          $( "#datepicker" ).datepicker();
                           } );
                        </script>
                    </td>
                    
                    <td>${employee.gender}</td>
                     <td>${employee.account}</td>
                     
                    <td><a href="editEmployee?id=${employee.id}">Edit</a>
                             <a
                        href="deleteEmployee?id=${employee.id}">Delete</a></td>
 
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>