<?xml version="1.0" encoding="UTF-8"?>
<jsp:root xmlns:jsp="http://java.sun.com/JSP/Page" version="2.0">
  <jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
 
  <html>
  <head><title>First JSP Document</title></head>
 
  <body>
    <jsp:scriptlet>
      double num = Math.random();
      if (num > 0.95) {
    </jsp:scriptlet>
        <h2>You will have a luck day!</h2><p>(<jsp:expression>num</jsp:expression>)</p>
    <jsp:scriptlet>
      } else {
    </jsp:scriptlet>
        <h2>Well, life goes on ... </h2><p>(<jsp:expression>num</jsp:expression>)</p>
    <jsp:scriptlet>
      }
    </jsp:scriptlet>
      <jsp:text><![CDATA[<a href="]]></jsp:text>
      <jsp:expression>request.getRequestURI()</jsp:expression>
      <jsp:text><![CDATA["><h3>Try Again</h3></a>]]></jsp:text>
  </body>
  </html>
</jsp:root>