<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary" aria-label="Fifth navbar example">
<div class="container-fluid">
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse" id="navbarsExample05">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="Welcome.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
</svg><i class="bi bi-house">HOME</i></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="boardlist.jsp">게시판</a>
      </li>
<!--       <li class="nav-item">
        <a class="nav-link disabled">Disabled</a>
      </li> -->
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">관리자메뉴</a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="members.jsp">회원관리</a></li>
          <li><a class="dropdown-item" href="products.jsp">제품관리</a></li>
          <li><a class="dropdown-item" href="board.jsp">게시판관리</a></li>
          <li><a class="dropdown-item" href="">기타</a></li>
        </ul>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">제품</a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="productlist.jsp">제품목록</a></li>
          <li><a class="dropdown-item" href="cart.jsp">장바구니</a></li>
          <li><a class="dropdown-item" href="buyinglist.jsp">구매내역</a></li>
          <li><a class="dropdown-item" href="delivery.jsp">배송조회</a></li>
        </ul>
      </li>
      
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">회원메뉴</a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
          <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
          <li><a class="dropdown-item" href="#">------</a></li>
          <li><a class="dropdown-item" href="member_input_page.jsp">회원가입</a></li>
          <li><a class="dropdown-item" href="member_delete.jsp">회원탈퇴</a></li>
        </ul>
      </li>
    </ul>
    
    	
<a class="navbar-brand" float = "right" href="Welcome.jsp">Web Market</a>
   <form role="search">
      <input class="form-control" type="search" placeholder="Search" aria-label="Search">
    </form> 
  </div>
</div>

</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
