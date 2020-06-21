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
    <title><spring:message code="app.title"/></title></head>
<body>

<h1> <spring:message code="delete.message"/></h1>
<spring:message code="delete.areYouSureQ"/><br>
<spring:message code="clinic.name"/>: <c:out value = "${clinic.name}"/><br>
<spring:message code="clinic.NIP"/>: <c:out value = "${clinic.nip}"/> <br>
<spring:message code="clinic.address"/>: <c:out value = "${clinic.address}"/>
<br> <br>

<form action="/clinic/delete/${clinic.id}" method="POST">
    <label>

        <input type="radio" id="ok" name="delete" value="Delete">
        <label for="ok"><spring:message code="delete.ok"/></label>
        <input type="radio" id="cancel" name="delete" value="Cancel">
        <label for="cancel"><spring:message code="delete.cancel"/></label>

    </label>

    <input type="submit" value="Submit">
</form>


</body>
</html>

