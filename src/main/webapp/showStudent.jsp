<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
<head>
<title>New Student Information</title>
</head>
<body>
	<table width="400">
		<tr>
			<td colspan="2">Student Info</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td width="30%">First Name</td>
			<td><c:out value="${newStudent.firstName}" /></td>
		</tr>
		<tr>
			<td> Last Name</td>
			<td> <c:out value="${newStudent.lastName}" /> </td>
		</tr>
		<tr>
			<td> Age</td>
			<td> <c:out value="${newStudent.age}" /></td>
		</tr>


	</table>
</body>
</html>
