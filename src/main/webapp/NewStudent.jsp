<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<html>
<head>
<title>Enter new Student</title>
</head>
<body>
	This page takes 3 values that you specify, and forwards them to another
	<br /> JSP. That JSP then extracts the parameters and displays them.


	<c:if test="${!(empty inputError.msg)}">
		<br />
		<br />
		<br />
     Error : <c:out value="${inputError.msg}" />
		<jsp:setProperty name="inputError" property="msg" value="" />
	</c:if>


	<p />
	<form action="checkAndForwardStudent.jsp" method="post">
		<table>
			<tr>
				<td>Enter First Name:</td>
				<td><input type="text" name="firstName" /></td>
			</tr>
			<tr>
				<td>Enter Last Name:</td>
				<td><input type="text" name="lastName" /></td>
			</tr>
			<tr>
				<td>Enter Age:</td>
				<td><input type="text" name="age" /></td>
			</tr>
		</table>
		<input type="submit" value="Submit details" />
	</form>
</body>
</html>