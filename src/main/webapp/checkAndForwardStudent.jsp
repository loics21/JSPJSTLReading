<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!--  validation code -->
<jsp:useBean id="newStudent" class="mypkg.Student" scope="session">
	<jsp:setProperty name="newStudent" property="*" />
</jsp:useBean>

<jsp:useBean id="inputError" class="mypkg.InputError" scope="session">
</jsp:useBean>

<c:if test="${empty fn:trim(param.firstName)}">
	<jsp:setProperty name="inputError" property="msg" value="The student's first name is empty. Please enter again." />
	<jsp:forward page="NewStudent.jsp" />
</c:if>

<c:if test="${empty fn:trim(param.lastName)}">
	<jsp:setProperty name="inputError" property="msg" value="The student's last name is empty. Please enter again." />
	<jsp:forward page="NewStudent.jsp" />
</c:if>

<c:if test="${empty fn:trim(param.age)}">
	<jsp:setProperty name="inputError" property="msg" value="The student's age is empty. Please enter again." />
	<jsp:forward page="NewStudent.jsp" />
</c:if>

<c:if test="${(param.age < 10) ||  (param.age > 110)}">
	 <jsp:setProperty name="inputError" property="msg" value="Student must be between the age of 10 and 110." />
	<jsp:forward page="NewStudent.jsp" />
</c:if>
<!-- data validated -->

<jsp:setProperty name="inputError" property="msg" value="" />
<jsp:forward page="showStudent.jsp" />
