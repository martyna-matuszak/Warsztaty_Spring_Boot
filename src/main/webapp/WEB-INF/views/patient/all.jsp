<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 24.05.2020
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <title><spring:message code="app.title"/></title>
</head>
<body>

<h2><spring:message code="patient.add"/></h2>
<a href="/patient/add">Click</a>
<h2><spring:message code="patient.seeAll"/></h2>
<table>
    <tbody>
    <tr>
        <th><spring:message code="patient.number"/></th>
        <th><spring:message code="patient.firstName"/></th>
        <th><spring:message code="patient.lastName"/></th>
        <th><spring:message code="patient.created"/></th>
        <th><spring:message code="patient.doctor"/></th>
        <th><spring:message code="patient.description"/></th>
        <th><spring:message code="app.action"/></th>

    </tr>
    <c:forEach items="${patients}" var="patient">
        <tr>
            <td><c:out value = "${patient.patientNumber}"/></td>
            <td><c:out value = "${patient.firstName}"/></td>
            <td><c:out value = "${patient.lastName}"/></td>
            <td><c:out value = "${patient.created}"/></td>
            <td><c:out value = "${patient.doctor}"/></td>
            <td><c:out value = "${patient.description}"/></td>
            <td><a href="/patient/edit/${patient.id}"><spring:message code="app.edit"/></a><br>
            <a href="/patient/delete/${patient.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>

</body>
</html>
