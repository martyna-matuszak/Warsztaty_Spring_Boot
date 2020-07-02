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

<jsp:include page="../header.jsp"/>

<body>

<h2><spring:message code="deadline.inputData"/></h2>

<form:form method="POST" modelAttribute="deadline">

    <spring:message code="deadline.dueDate"/>: <form:input type="date" path="dueDate"/>
    <form:errors path="dueDate"/> <br>

    <spring:message code="deadline.dueTime"/>: <form:input type="time" path="dueTime"/>
    <form:errors path="dueTime"/> <br>

    <spring:message code="deadline.workStage"/>: <form:input path="workStage"/><br>

    <spring:message code="deadline.additionalInfo"/>: <form:input path="additionalInfo"/><br>

    <form:hidden path="patient"/>
    <form:hidden path="eventId"/>

    <input type="submit">
</form:form>
<br>

</body>
</html>
