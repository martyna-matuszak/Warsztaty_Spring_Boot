<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 26.06.2020
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title><spring:message code="app.title"/></title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">

<ul>
    <li><a class="main" href="http://localhost:8080/"><spring:message code="app.title"/></a></li>
    <li><a class="button" href="/clinic/all"><spring:message code="clinic.clinics"/></a></li>
    <li><a class="button" href="/doctor/all"><spring:message code="doctor.doctors"/></a></li>
    <li><a class="button" href="/patient/all"><spring:message code="patient.patients"/></a></li>
    <li><a class="button" href="/calendar"><spring:message code="calendar.calendar"/></a></li>
<%--    <li><a class="button" href="">About</a></li>--%>
</ul> <br>
</head>

