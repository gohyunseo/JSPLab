<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
						
</head>																																																																																		
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원탈퇴
	</h1>
</div>	
</div>

<div class="container"  style="max-width: 330px">

<main class="form-signin">
  <form action = "memberout_db.jsp">
  <div class="d-flex justify-content-center">
    <img class="mb-4" src="http://austiny.snu.ac.kr/image/mine.jpg" alt="" width="72" height="57">
        </div>
    <div class="form-floating">
      <input name="mname" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">아이디/별명</label>
    </div>
    <div class="form-floating">
      <input name="mpass" type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">비밀번호</label>
    </div>

    <input type="button" class="w-100 btn btn-lg btn-danger" value="회원 탈퇴" onClick="confirm_onClick();">
		<script>
			function confirm_onClick() {
			var answer = confirm("정말 탈퇴하시겠습니까?");
		
			if (answer) {
			location.href = "memberout_db.jsp";
			} else {
			history.back();
			}	
			}
		</script>
    <br>
    <img src = "http://papaspick.com/web/upload/2019_web/icon/kakao_login.jpg" height= "55px" width= "305px">
    <p class="mt-1 mb-3 text-muted">&copy; hyunseo ko</p>
  </form>
</main>


</div>

<br><br>

<%@ include file="footer.jsp" %>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>