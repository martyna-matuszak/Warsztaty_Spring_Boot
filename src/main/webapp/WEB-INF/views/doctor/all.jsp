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

<h2><spring:message code="doctor.add"/></h2>
<a href="/doctor/add">Click</a>
<h2><spring:message code="doctor.seeAll"/></h2>
<table>
    <tbody>
    <tr>
        <th><spring:message code="doctor.firstName"/></th>
        <th><spring:message code="doctor.lastName"/></th>
        <th><spring:message code="doctor.clinic"/></th>

    </tr>
    <c:forEach items="${doctors}" var="doctor">
        <tr>
            <td><c:out value = "${doctor.firstName}"/></td>
            <td><c:out value = "${doctor.lastName}"/></td>
            <td><c:out value = "${doctor.clinic.shortName}"/></td>
            <td><a href="/doctor/edit/${doctor.id}"><spring:message code="app.edit"/></a><br>
            <a href="/doctor/delete/${doctor.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>
</body>
</html>
