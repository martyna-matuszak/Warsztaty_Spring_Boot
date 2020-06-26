<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 26.06.2020
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Error</title>
</head>
<body>

<h1> <spring:message code="app.error"/></h1>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>


</body>
</html>
