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

<jsp:include page="../header.jsp"/>

<body>

<h2 style="display: inline"><spring:message code="patient.add"/></h2>
<a class="add" href="/patient/add">+</a>

<h2><spring:message code="patient.seeAll"/></h2>
<table style="table-layout: fixed">
    <tbody>
    <tr>
        <th style="width: 100px"><spring:message code="patient.number"/></th>
        <th style="width: 130px"><spring:message code="patient.firstName"/></th>
        <th style="width: 130px"><spring:message code="patient.lastName"/></th>
        <th style="width: 100px"><spring:message code="patient.created"/></th>
        <th style="width: 250px"><spring:message code="patient.doctor"/></th>
        <th style="width: 350px"><spring:message code="patient.description"/></th>
        <th style="width: 150px"></th>

    </tr>
    <c:forEach items="${patients}" var="patient">
        <tr>
            <td><a href="http://localhost:8080/patient/${patient.id}"><c:out value = "${patient.patientNumber}"/></a></td>
            <td><c:out value = "${patient.firstName}"/></td>
            <td><c:out value = "${patient.lastName}"/></td>
            <td><c:out value = "${patient.created}"/></td>
            <td><c:out value = "${patient.doctor}"/></td>
            <td><c:out value = "${patient.description}"/></td>
            <td><a href="/patient/edit/${patient.id}"><spring:message code="app.edit"/></a>
            <a href="/patient/delete/${patient.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>

</body>
</html>
