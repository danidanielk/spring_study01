<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/signup.css">
</head>
<jsp:include page="layout/layout.jsp"></jsp:include>
<body>

	<form class="signform" action="login.do" method="post">
    <label class="label2">
      <p class="label-txt">ENTER YOUR ID</p><br>
      <input type="text" class="input" name="id">
      <div class="line-box">
        <div class="line"></div>
      </div>
    </label>
    
    <label class="label3">
      <p class="label-txt">ENTER YOUR PASSWORD</p><br>
      <input type="password" class="input" name="pw">
      <div class="line-box">
        <div class="line"></div>
      </div>
    </label>
    <div align="center" style="color: red;">${rr }</div><br>
    <button class="button1" type="submit">submit</button>
  </form>
${r }
</body>
</body>
</html>