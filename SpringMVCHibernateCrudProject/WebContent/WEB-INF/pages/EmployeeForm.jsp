<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New/Edit Contact</title>
</head>
<body>
<div align="center">
        <h1>New/Edit Employee</h1>
        <form:form action="saveEmployee" method="post" modelAttribute="employee">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                         <td>Date:</td>
                <td><form:input path="DOB" type="date" id="datepicker" /></td>
            </tr>
            <tr>
                
                 <td><b>Gender:</b></td>
				<td><form:radiobutton path="gender" value="Male" />Male&nbsp;&nbsp;
				<form:radiobutton path="gender" value="Female" />Female</td>
		
				</tr>
				<tr>		 
             <td><b>Account:</b></td>
				<td><form:select path="account">
						<form:option value="0">--Select--</form:option>
						<form:option value="Savings Account">Savings Account</form:option>
						<form:option value="Current Account">Current Account</form:option>
						
					</form:select></td>
			</tr>

               
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"></td>
            </tr>
        </table>
        </form:form>
    </div>

</body>
</html>