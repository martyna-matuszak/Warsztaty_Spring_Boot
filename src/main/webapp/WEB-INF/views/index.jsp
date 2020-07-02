<%--
  Created by IntelliJ IDEA.
  User: martyna
  Date: 24.05.2020
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<jsp:include page="header.jsp"/>

<body>
<br>
<h2><spring:message code="clinic.clinics"/></h2>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris lacus massa, sagittis vel consequat eget, commodo eu ex. Nulla gravida facilisis velit. Integer fringilla dolor quis lectus vestibulum, quis faucibus velit semper. Maecenas congue ac libero ut laoreet. Aenean vitae purus quis ipsum condimentum bibendum. Proin et velit sit amet neque sollicitudin mattis sed in nisl. Vestibulum leo ante, gravida eget ullamcorper vitae, pharetra non ligula. Nunc congue vestibulum erat, et molestie tortor ultrices tincidunt. Cras eu dui feugiat, efficitur nulla eu, eleifend nulla.
<br><a href="/clinic/all"><spring:message code="clinic.seeAll"/></a> <br>

<h2><spring:message code="doctor.doctors"/></h2>
Nam vitae felis id nibh laoreet tempor eu vel magna. Sed id sapien lectus. Mauris sodales bibendum massa, vel fermentum elit fermentum at. Nam fringilla magna non turpis maximus, at scelerisque libero tempor. Mauris at scelerisque est, sed cursus neque. Ut eu purus nibh. Phasellus a fringilla mi. Morbi at sem at turpis consequat pretium. Suspendisse ut vehicula sem. Ut hendrerit, lorem non pulvinar egestas, neque metus efficitur nisl, sed lobortis risus dolor vitae mauris. Aenean dapibus eget risus eu hendrerit. Phasellus laoreet tincidunt sagittis. Vestibulum ut ante vel arcu lobortis tincidunt. Nunc consectetur sit amet mauris et finibus.
<br><a href="/doctor/all"><spring:message code="doctor.seeAll"/></a> <br>

<h2><spring:message code="patient.patients"/></h2>
Nam mattis ante at lacus faucibus, eget facilisis mi placerat. Morbi vitae justo sollicitudin, mollis metus sit amet, finibus metus. Nullam ultrices nisl nec nunc rutrum, eu dapibus elit ultricies. Donec fermentum rhoncus est, sed luctus ex varius id. Praesent nec lacus ac dui faucibus commodo vitae in neque. Cras laoreet vel quam id sollicitudin. Ut vel risus in tortor rhoncus molestie consectetur et sapien. Aliquam tempus augue sem, sed luctus elit aliquam ut. Suspendisse maximus massa sit amet scelerisque dapibus. Pellentesque commodo nulla et nisi laoreet sollicitudin. Praesent placerat sem justo, id gravida turpis euismod vitae.
<br><a href="/patient/all"><spring:message code="patient.seeAll"/></a> <br>

<h2><spring:message code="calendar.see"/></h2>
In hac habitasse platea dictumst. Aenean sollicitudin, ligula dignissim luctus mattis, leo erat consectetur augue, id semper enim sem vel nisl. Donec consequat mi quis risus volutpat convallis at eget erat. Etiam porttitor erat a lacinia mollis. Aenean scelerisque vehicula nisl. Nam consectetur urna nec enim dignissim tempor. Morbi pellentesque eros ac pellentesque convallis. Pellentesque pretium eros urna, non fringilla quam pellentesque at. Etiam aliquet imperdiet tincidunt. Nullam a laoreet erat, et tristique tortor. Nam fermentum sem nec velit pulvinar, ac gravida odio imperdiet. In non purus at urna tempus hendrerit. Fusce dui dui, feugiat et scelerisque a, congue vestibulum odio. Mauris efficitur magna quis suscipit aliquet. Nulla lacinia elementum pharetra. Nunc in luctus diam, sit amet mollis velit.
<br><a href="/calendar"><spring:message code="calendar.calendar"/></a>
</body>

</html>

