<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 21.06.2020
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<jsp:include page="header.jsp"/>
<body>

<iframe src="https://calendar.google.com/calendar/b/1/embed?height=600&amp;wkst=2&amp;bgcolor=%23ffffff&amp;ctz=Europe%2FWarsaw
&amp;src=MjgzM2c5Mm9pcjRjb21vcjltdTRhZmJjcW9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%239d2906&amp;title=<spring:message code="app.schedule"/>
&amp;showCalendars=0" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
</body>
</html>
