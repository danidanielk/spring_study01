<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="">Fisherman</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.do">Home</a>
        </li>
        <li class="nav-item">
        <c:choose>
        <c:when test="${loginMember != null }">
          <a class="nav-link" >${sessionScope.loginMember.name } 님</a>
        </c:when>
		<c:when test="${loginMember == null }">
          <a class="nav-link" href="signup2.do">Signup</a>
		</c:when>		
        </c:choose>
        </li>
		


        <li class="nav-item">
        <c:choose>
	<c:when test="${loginMember != null}">
          <a class="nav-link" href="logout.do" >logout</a>
	</c:when>        
	<c:when test="${loginMember == null }">
          <a class="nav-link" href="login2.do" >login</a>
	</c:when>

        </c:choose>


        
      </ul>
   
    </div>
  </div>
</nav><hr>
<div align="center" class="navbar-brand" style="font-size:25pt;">Fisherman Community</div>
<hr>

<br>
<br>
<br>


</body>
</html>



