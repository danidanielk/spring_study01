<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="layout/layout.jsp"></jsp:include>
<div width="100%" align="center">
<c:choose>
<c:when test="${loginMember != null }">
<a href="map.do" ><img alt="" src="resources/img/totoro.jpg"></a>
</c:when>
<c:when test="${loginMember == null }">
<a href="login2.do" ><img alt="" src="resources/img/totoro.jpg"></a>
</c:when>

</c:choose>

</div>
<div width="100%" align="center"><h4>click</h4></div>

<br>
<br>
<br>
</body>
</html>