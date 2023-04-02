<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Test JSTL functions actions</title>
   </head>
   <body>
      <c:set var="str" value="${empty param.str ? 'Hello, world!' : param.str}" />
      <c:if test="${fn:contains(str, 'Hello')}">
         <c:out value="'${str}' contains 'Hello'" /><br />
      </c:if>
 
      <c:out value="${fn:containsIgnoreCase(str, 'Hello') ? 'yes' : 'no'}" /><br />
 
      <c:out value="${fn:indexOf(str, 'a')}" /><br />
 
      ${fn:length(str)}<br />
      ${fn:substring(str, 3, 6)}<br />
      ${fn:substringAfter(str, ',')}<br />
      ${fn:substringBefore(str, ',')}<br />
      ${fn:endsWith(str, '!')}<br />
      ${fn:startsWith(str, 'H')}<br />
 
      <%-- Dot instead of ':' according to tld --%>
      <c:out value="${fn.toLowercase('TEST')}" /><br />
      <c:out value="${fn.toUppercase('test')}" /><br />
   </body>