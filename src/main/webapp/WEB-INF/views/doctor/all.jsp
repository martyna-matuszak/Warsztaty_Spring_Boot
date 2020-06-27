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

<h2 style="display: inline"><spring:message code="doctor.add"/></h2>
<a class="add" href="/doctor/add">+</a>

<h2><spring:message code="doctor.seeAll"/></h2>

<table>
    <tbody>
    <tr>
        <th style="width: 200px"><spring:message code="doctor.firstName"/></th>
        <th style="width: 200px"><spring:message code="doctor.lastName"/></th>
        <th style="width: 200px"><spring:message code="doctor.clinic"/></th>

    </tr>
    <c:forEach items="${doctors}" var="doctor">
        <tr>
            <td><c:out value = "${doctor.firstName}"/></td>
            <td><c:out value = "${doctor.lastName}"/></td>
            <td><c:out value = "${doctor.clinic.shortName}"/></td>
            <td><a href="/doctor/edit/${doctor.id}"><spring:message code="app.edit"/></a>
            <a href="/doctor/delete/${doctor.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
</body>
</html>
