<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!--  validation code -->
<jsp:useBean id="newFaculty" class="mypkg.Faculty" scope="session">
	<jsp:setProperty name="newFaculty" property="*" />
</jsp:useBean>

<jsp:useBean id="inputError" class="mypkg.InputError" scope="session">
</jsp:useBean>

<c:if test="${empty fn:trim(param.id)}">
	<jsp:setProperty name="inputError" property="msg" value="Your id is empty. Please enter again." />
	<jsp:forward page="NewFaculty.jsp" />
</c:if>
<c:if test="${(param.id <= 0) ||  (param.id >= 999)}">
	 <jsp:setProperty name="inputError" property="msg" value="Your id is not in range of 1-1000. Please enter again." />
	<jsp:forward page="NewFaculty.jsp" />
</c:if>
<!-- data validated -->

<jsp:setProperty name="inputError" property="msg" value="" />
<jsp:forward page="showFaculty.jsp" />
