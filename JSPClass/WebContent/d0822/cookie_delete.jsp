<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie delete</title>
</head>
<body>
<% 
	Cookie[] cookies = request.getCookies();

	if (cookies != null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("id")){
				cookies[i].setMaxAge(0); //쿠키삭제
				response.addCookie(cookies[i]);
				out.print("쿠키정보 삭제 완료");
			}
		}
	}else{
		out.print("설정된 쿠키정보가 없습니다.");
	}

%>
<p><a href = "cookie_check.jsp">쿠키확인</a>
</body>
</html>