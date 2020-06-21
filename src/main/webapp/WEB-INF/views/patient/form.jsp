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

<h1><spring:message code="patient.inputData"/></h1>

<form:form method="POST" modelAttribute="patient">
    <spring:message code="patient.number"/>: <form:input path="patientNumber"/>
    <br>

    <spring:message code="patient.firstName"/>: <form:input path="firstName"/>
    <form:errors path="firstName"/> <br>

    <spring:message code="patient.lastName"/>: <form:input path="lastName"/>
    <form:errors path="lastName"/> <br>

    <spring:message code="patient.created"/>: <form:input path="created"/> <br>

<%--    <spring:message code="patient.clinic"/>:--%>
<%--    <form:select path="clinic" itemLabel="shortName" itemValue="id" items="${clinicList}" /><br>--%>

    <spring:message code="patient.doctor"/>:
    <form:select path="doctor" itemLabel="fullName" itemValue="id" items="${doctorList}" /> <br>

    <spring:message code="patient.description"/>: <form:input path="description"/> <br>

    <input type="submit">
</form:form>
<br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>

</body>
</html>
