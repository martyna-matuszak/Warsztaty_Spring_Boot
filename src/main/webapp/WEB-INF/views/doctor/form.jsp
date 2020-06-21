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

<h1><spring:message code="doctor.inputData"/></h1>

<form:form method="POST" modelAttribute="doctor">
    <spring:message code="doctor.firstName"/>: <form:input path="firstName"/>
    <form:errors path="firstName"/> <br>

    <spring:message code="doctor.lastName"/>: <form:input path="lastName"/>
    <form:errors path="lastName"/> <br>

    <spring:message code="doctor.clinic"/>: <form:select path="clinic" itemLabel="shortName" itemValue="id" items="${clinics}" />
    <form:errors path="clinic"/> <br>



    <input type="submit">
</form:form>
<br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>

</body>
</html>
