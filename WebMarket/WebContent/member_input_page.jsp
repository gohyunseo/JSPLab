<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<title>Join Member</title>
<head>
<meta charset="UTF-8">
</head>
<body>
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class = "container">
	<h1 class = "display-3">
	회원가입
	</h1>
</div>
</div>

<div class="container">
<form action = "member_input.jsp" method="post"  enctype= "multipart/form-data">
	<div class = "form-group row">
	<label class = "col-sm-2">이름</label>
	<div class ="col-sm-3">
		<input name = "mname" type="text" class="form-control" placeholder ="회원명을 입력하세요.">
	</div>
	</div>
	
		<div class = "form-group row">
	<label class = "col-sm-2">비밀번호</label>
	<div class ="col-sm-3">
		<input name = "mpass" type="text" class="form-control" placeholder ="비밀번호를 입력하세요.">
	</div>
	</div>
			<div class = "form-group row">
	<label class = "col-sm-2">전화번호</label>
	<div class ="col-sm-3">
		<input name = "mtel" type="text" class="form-control" placeholder ="전화번호를 입력하세요.">
	</div>
	</div>
	
			<div class = "form-group row">
	<label class = "col-sm-2">이메일</label>
	<div class ="col-sm-3">
		<input name = "memail" type="text" class="form-control" placeholder ="이메일 주소를 입력하세요.">
	</div>
	</div>
		<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">본인성별</label>
		<div class="col-sm-5">
			<div class="form-check form-check-inline">
					<%
			if (true) {
					%>
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성"  checked>
			  <label class="form-check-label" for="inlineRadio1">남성</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성">
			  <label class="form-check-label" for="inlineRadio2">여성</label>
			  <%	} else {%>		
			 <input class="form-check-input" type="radio" name="mgender" id="inlineRadio1" value="남성">
			  <label class="form-check-label" for="inlineRadio1">남성</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="mgender" id="inlineRadio2" value="여성"  checked>
			  <label class="form-check-label" for="inlineRadio2">여성</label>
			<%	} %>		  
			</div>
		</div>
	</div>


			<div class = "form-group row">
	<label class = "col-sm-2">배송주소</label>
	<div class ="col-sm-3">
		<input name = "maddr" type="text" class="form-control" placeholder ="배송지를 입력하세요.">
	</div>
	</div>
	
	<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d57fba681721889d0b64bbbecc3e874d&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>

	<div class = "form-group row">
	<label class = "col-sm-2">사진등록</label>
<div class="col-sm-3">
  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
</div>
</div>
<br>

	
		<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
		<input type="submit" class="btn btn-primary" value="회원가입">
			<input type="reset" class="btn btn-danger" value="초기화" onclick="reset()">	
	</div>
	</div>
</form>
</div>


<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>