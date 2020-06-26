<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 24.06.2020
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title><spring:message code="app.title"/></title>
</head>
<body>
<h1><spring:message code="patient.patient"/> <c:out value = "${patient.patientNumber}"/></h1>
<h2><spring:message code="patient.data"/></h2>
<spring:message code="patient.fullName"/>: <c:out value = "${patient.fullName}"/><br>
<spring:message code="patient.doctor"/>: <c:out value = "${patient.doctor.fullName}"/><br>
<spring:message code="patient.clinic"/>: <c:out value = "${patient.doctor.clinic.shortName}"/><br>
<spring:message code="patient.description"/>: <c:out value = "${patient.description}"/><br>

<h2><spring:message code="patient.deadlines"/></h2>

<a href="/deadline/add/${patient.id}"><spring:message code="patient.addDeadline"/></a>
<br><br>

<table>
    <tbody>
    <tr>
        <th style="width:130px"><spring:message code="deadline.time"/></th>
        <th style="width:130px"><spring:message code="deadline.workStage"/></th>
        <th style="width:300px"><spring:message code="deadline.additionalInfo"/></th>
        <th style="width:130px"><spring:message code="app.action"/></th>

    </tr>
    <c:forEach items="${deadlines}" var="deadline">
        <tr style="height:20px">
            <td style="text-align:center"><c:out value = "${deadline.time}"/></td>
            <td style="text-align:center"><c:out value = "${deadline.workStage}"/></td>
            <td style="text-align:center"><c:out value = "${deadline.additionalInfo}"/></td>
            <td style="text-align:center"><a href="/deadline/edit/${deadline.id}"><spring:message code="app.edit"/></a>
                <a href="/deadline/delete/${deadline.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br>
<br>
<a href="/patient/all"><spring:message code="patient.seeAll"/></a> <br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>
</body>
</html>
