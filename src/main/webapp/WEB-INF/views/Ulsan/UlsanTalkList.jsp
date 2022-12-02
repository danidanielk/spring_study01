<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList
</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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



	<div class="page-wrapper" >
		<div class="container-fluid" >
			<div class="col-lg-8" >
				<!--게시판 넓이 -->
				<div class="col-lg-12">
					<h1 class="page-header">울산 자유게시판</h1>
				</div>
				<div class="row">
					<div class="col-lg-12" align="right">
						<form action="UlsanTalk.do" method="get">
							<button>글작성</button>
						</form>
					</div>
				</div>
							<br>
				<div class="panel panel-default">
					<div class="panel-heading">게시판</div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>No.</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="s" items="${selectTalk }">
									<tr>
										<td>${s.t_n }</td>
										<td><a href="UlsanTalkRead.do?t_n=${s.t_n }">${s.t_title }</a></td>
										<td>${s.t_name }</td>
										<td>${s.t_date }</td>
										<td>${s.t_count }</td>
									</tr>
									</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>