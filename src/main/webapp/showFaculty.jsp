<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
<head>
<title>New Faculty Information</title>
</head>
<body>
	<table width="400">
		<tr>
			<td colspan="2">Faculty Info</td>
		</tr>
		<tr>
			<td colspan="2">&nbsp;</td>
		</tr>
		<tr>
			<td width="30%">id</td>
			<td><c:out value="${newFaculty.id}" /></td>
		</tr>
		<tr>
			<td> Name</td>
			<td> <c:out value="${newFaculty.name}" /> </td>
		</tr>
		<tr>
			<td> Role</td>
			<td> <c:out value="${newFaculty.role}" /></td>
		</tr>


	</table>
</body>
</html>
