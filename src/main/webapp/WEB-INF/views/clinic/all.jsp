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

<h2 style="display: inline"><spring:message code="clinic.add"/></h2>
<a class="add" href="/clinic/add">+</a>

<h2><spring:message code="clinic.seeAll"/></h2>

<table>
    <tbody>
    <tr>
        <th style="width:130px" ><spring:message code="clinic.shortName"/></th>
        <th style="width:500px"><spring:message code="clinic.name"/></th>
        <th style="width:100px"><spring:message code="clinic.NIP"/></th>
        <th style="width:300px"><spring:message code="clinic.address"/></th>

    </tr>
    <c:forEach items="${clinics}" var="clinic">
        <tr>
            <td><c:out value = "${clinic.shortName}"/></td>
            <td><c:out value = "${clinic.name}"/></td>
            <td><c:out value = "${clinic.nip}"/></td>
            <td><c:out value = "${clinic.street} ${clinic.houseNumber}"/> <br> <c:out value = "${clinic.postcode} ${clinic.city}"/></td>
            <td><a href="/clinic/edit/${clinic.id}"><spring:message code="app.edit"/></a>
            <a href="/clinic/delete/${clinic.id}"><spring:message code="app.delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>

</body>
</html>
