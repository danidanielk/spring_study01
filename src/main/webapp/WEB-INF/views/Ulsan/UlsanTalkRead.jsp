<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>




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















	<div class="container">
		<h2>Spring MVC BOARD</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Board FORM</div>
			<div class="panel-body">
				<form class="form-horizontal" action="UlsanTalk.do" method="post">

					<!-- 제목 -->
					<div class="form-group">
						<label class="control-label col-sm-2">제목 : </label>
						<div class="col-sm-10">
				<div>${readTalk.t_title }</div>
						</div>
					</div>

					<!-- 내용 -->
					<div class="form-group">
						<label class="control-label col-sm-2">내용 : </label>
						<div class="col-sm-10">
				<div>${readTalk.t_content }</div>
							<!--  form-control 한줄 채워줌 -->
						</div>
					</div>

					<!-- 작성자 -->
					<div class="form-group">
						<label class="control-label col-sm-2">작성자 : </label>
						<div class="col-sm-10">
				<div>${readTalk.t_name }</div>
						</div>
					</div>

					<!-- 작성 완료 / 취소 -->
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="reset" class="brn btn-warning btn-sm" onclick="location.href='talk.do'">뒤로가기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>