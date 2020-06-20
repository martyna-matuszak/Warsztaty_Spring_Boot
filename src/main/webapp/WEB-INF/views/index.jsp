<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 24.05.2020
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title><spring:message code="app.title"/></title>
</head>
<body>
<h1><spring:message code="app.title"/></h1>

<a href="/case/all"><spring:message code="app.seeAllCasesText"/></a>
<footer>
    <spring:message code="app.footer"/>
</footer>
</body>
</html>
