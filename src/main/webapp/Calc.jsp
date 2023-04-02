<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head><title>Using JSTL</title></head> 
  <body>
    <h1>Setting Some Attributes With JSTL</h1> 
    
    <c:set var="a" value="5" scope="request" />
    <c:set var="b" value="15" scope="request" />
    <p>Expression output: ${a+b}</p>
  </body>
</html>
