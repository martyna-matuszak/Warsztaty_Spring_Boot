<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 24.05.2020
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title><spring:message code="app.title"/></title>
</head>
<body>
<h1><spring:message code="app.title"/></h1>
<h2><spring:message code="clinic.clinics"/></h2>
<a href="/clinic/all"><spring:message code="clinic.seeAll"/></a> <br>

<h2><spring:message code="doctor.doctors"/></h2>
<a href="/doctor/all"><spring:message code="doctor.seeAll"/></a> <br>

<h2><spring:message code="patient.patients"/></h2>
<a href="/patient/all"><spring:message code="patient.seeAll"/></a> <br>

<h2>Przejdź do kalendarza</h2>
<a href="/calendar">Kalendarz</a>

<footer>
    <spring:message code="app.footer"/>
</footer>
</body>
</html>
