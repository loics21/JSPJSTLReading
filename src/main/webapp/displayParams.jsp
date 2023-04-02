<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<html>
  <head>
    <title>the c:url action (3)</title>
  </head>
  <body>
<c:if test="${!(empty inputerror)}">
       ${inputerror.msg}
</c:if>

    <h3>List of query string parameters:</h3>
    <ul>
      <c:forEach items="${param}" var="currentParam">
        <li><c:out value="${currentParam.key}" />
            = <c:out value="${currentParam.value}" /></li>
      </c:forEach>
    </ul>
 </body>
</html>