<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="includes.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Management</title>
</head>
<body>
	<h1>Students Data</h1>
	<form:form action="student.do" method="POST" commandName="student">
		<table>
			<tr>
				<td>Student ID</td>
				<td><form:input path="studentId"/></td>
			</tr>
			<tr>
				<td>First Name</td>
				<td<form:input path="firstname"/>></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastname"/></td>
			</tr>
			<tr>
				<td>Year Level</td>
				<td><form:input path="yearLevel"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" name="action" value="Add" />
					<input type="submit" name="action" value="Edit" />
					<input type="submit" name="action" value="Delete" />
					<input type="submit" name="action" value="Search" />
				</td>
			</tr>
		</table>
	</form:form>
	<br>
	<table>
		<tr>Student ID</tr>
		<tr>First Name</tr>
		<tr>Last Name</tr>
		<tr>Year Level</tr>
		<c:forEach items="${studentList}" var="student">
			<tr>
				<td>${student.studentId}</td>
				<td>${student.firstname}</td>
				<td>${student.lastname}</td>
				<td>${student.yearLevel}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>