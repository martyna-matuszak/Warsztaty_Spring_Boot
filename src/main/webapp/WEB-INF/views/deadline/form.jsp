<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 24.05.2020
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title><spring:message code="app.title"/></title>
</head>
<body>

<h1><spring:message code="deadline.inputData"/></h1>

<form:form method="POST" modelAttribute="deadline">

    <spring:message code="deadline.dueDate"/>: <form:input type="date" path="dueDate"/>
    <form:errors path="dueDate"/> <br>

    <spring:message code="deadline.dueTime"/>: <form:input type="time" path="dueTime"/>
    <form:errors path="dueTime"/> <br>

    <spring:message code="deadline.workStage"/>: <form:input path="workStage"/><br>

    <spring:message code="deadline.additionalInfo"/>: <form:input path="additionalInfo"/><br>

    <form:hidden path="patient"/>

    <input type="submit">
</form:form>
<br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>

</body>
</html>
