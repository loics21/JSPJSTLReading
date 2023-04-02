<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>


<html>
<head>
<title>Enter new Faculty</title>
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
	<form action="checkAndForward.jsp" method="post">
		<table>
			<tr>
				<td>Enter id:</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td>Enter name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Enter role:</td>
				<td><input type="text" name="role" /></td>
			</tr>
		</table>
		<input type="submit" value="Submit details" />
	</form>
</body>
</html>