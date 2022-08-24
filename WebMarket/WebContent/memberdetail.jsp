<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>

<%@ include file="header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">

	<h1 class = "display-3">
		회원 정보
	</h1>
</div>	
</div>

<%
	String mname = (String)session.getAttribute("mname");

	DTOmember member = DAOmember.memberdetail(mname);


%>





<div class="container align-items-center" >

<form action="memberinput.jsp" method="post" enctype="multipart/form-data">


	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">회원별명</label>
		<div class="col-sm-5">
			<input name="mname" value="<%=member.getMname() %>" type="text" class="form-control" placeholder="한글 사용도 가능합니다.">
		</div>
	</div>

	<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">패스워드</label>
		<div class="col-sm-5">
			<input name="mpass"  value="<%=member.getMpass() %>" type="password" class="form-control" placeholder="암호를 입력하세요">
		</div>
	</div>
	
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전화번호</label>
		<div class="col-sm-5">
			<input name="mtel" value="<%=member.getMtel() %>" type="text" class="form-control" placeholder="전화번호를 입력하세요">
		</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">전자우편</label>
		<div class="col-sm-5">
			<input name="memail" type="text" value="<%=member.getMemail() %>" class="form-control" placeholder="이메일주소를 입력하세요">
		</div>
	</div>




		<div class="form-group row">
		<label class="col-sm-2 d-flex justify-content-end">본인성별</label>
		<div class="col-sm-5">
			<div class="form-check form-check-inline">
			<%
			String gender = member.getMgender();
					
			if (gender.equals("남성")) {
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
	


	
		<div class="form-group row">
		<label class="col-sm-2  d-flex justify-content-end">배송주소</label>
		<div class="col-sm-5">
			<input name="maddr" type="text"  value="<%=member.getMaddr() %>" class="form-control" placeholder="배송지를 입력하세요">
		</div>
	</div>
	
<div class="container">
<div id="map" style="height:350px;"></div>
</div>

<div class="container">
<div id="roadview" style="height:350px;"></div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d57fba681721889d0b64bbbecc3e874d&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  
   
var map = new kakao.maps.Map(mapContainer, mapOption); 

//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new kakao.maps.MapTypeControl();

// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

var geocoder = new kakao.maps.services.Geocoder();


var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체


// 주소로 좌표를 검색합니다
geocoder.addressSearch('<%=member.getMaddr() %>', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;"><%=member.getMname()%>님의 주소</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        roadviewClient.getNearestPanoId(coords, 50, function(panoId) {
            roadview.setPanoId(panoId, coords); 
        });
        
    } 
    
});   
</script>
	
	
	<div class="form-group row">
	<label class="col-sm-2  d-flex justify-content-end">사진등록</label>
	<div class="col-sm-5">
	  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
	 </div>
	</div>
	
	<script>
    // Get a reference to our file input
    const fileInput = document.querySelector('input[type="file"]');

    // Create a new File object
    const myFile = new File(['Hello World!'], '<%=member.getMiname() %>', {
        type: 'text/plain',
        lastModified: new Date(),
    });

    // Now let's create a DataTransfer to get a FileList
    const dataTransfer = new DataTransfer();
    dataTransfer.items.add(myFile);
    fileInput.files = dataTransfer.files;
</script>


	
	<div class="container" style="height: 20px;"></div>
	
	<div class="form-group row">
			<label class="col-sm-2"></label>
				<div class="col-sm-5 d-flex justify-content-around">
			<input type="submit" class="btn btn-secondary" value="등록">
			<input type="reset" class="btn btn-dark" value="취소" onclick="reset()">			 
		
		</div>
		
	</div>

</form>
</div>

<br><br>
<!-- <footer class="container">
	<p> &copy; Austin Yoon</p>
</footer> -->

<%@ include file="footer.jsp" %>


</body>
</html>