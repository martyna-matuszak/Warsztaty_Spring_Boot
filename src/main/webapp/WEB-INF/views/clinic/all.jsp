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

<h2><spring:message code="clinic.add"/></h2>
<a href="/clinic/add">Click</a>
<h2><spring:message code="clinic.seeAll"/></h2>
<table>
    <tbody>
    <tr>
        <th><spring:message code="clinic.shortName"/></th>
        <th><spring:message code="clinic.name"/></th>
        <th><spring:message code="clinic.NIP"/></th>
        <th><spring:message code="clinic.address"/></th>

    </tr>
    <c:forEach items="${clinics}" var="clinic">
        <tr>
            <td><c:out value = "${clinic.shortName}"/></td>
            <td><c:out value = "${clinic.name}"/></td>
            <td><c:out value = "${clinic.nip}"/></td>
            <td><c:out value = "${clinic.address}"/></td>
            <td><a href="/clinic/edit/${clinic.id}"><spring:message code="app.edit"/></a><br>
            <a href="/clinic/delete/${clinic.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<spring:message code="app.return"/> <a href="http://localhost:8080/"><spring:message code="app.here"/></a>
</body>
</html>
