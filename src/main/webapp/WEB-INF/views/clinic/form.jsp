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

<h2><spring:message code="clinic.inputData"/></h2>

<form:form method="POST" modelAttribute="clinic">
    <spring:message code="clinic.shortName"/>: <form:input path="shortName"/>
    <form:errors path="shortName"/> <br>

    <spring:message code="clinic.name"/>: <form:input path="name"/>
    <form:errors path="name"/> <br>

    <spring:message code="clinic.NIP"/>: <form:input path="nip"/>
    <form:errors path="nip"/> <br>

    <spring:message code="address.street"/>: <form:input path="street"/>
    <form:errors path="street"/> <br>

    <spring:message code="address.houseNumber"/>: <form:input path="houseNumber"/>
    <form:errors path="houseNumber"/> <br>

    <spring:message code="address.city"/>: <form:input path="city"/>
    <form:errors path="city"/> <br>

    <spring:message code="address.postcode"/>: <form:input path="postcode"/>
    <form:errors path="postcode"/> <br>

    <input type="submit">
</form:form>
<br>

</body>
</html>
